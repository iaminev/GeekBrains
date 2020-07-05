import re
from pprint import pprint

import pandas as pd
import requests
from bs4 import BeautifulSoup as bs
from pymongo import MongoClient



def get_salary_attrs(salary_text):
    vacancy_offer_from = None
    vacancy_offer_to = None
    vacancy_offer_currency = None
    s_list = salary_text.split()
    #pprint(s_list)
    if salary_text != None:
        vacancy_offer_currency = s_list[-1]
        try:
            from_pos = s_list.index('от')
            vacancy_offer_from = int(s_list[from_pos+1])
        except ValueError:
            from_pos = None
        try:
            to_pos = s_list.index('до')
            vacancy_offer_to = int(s_list[to_pos+1])
        except ValueError:
            to_pos = None
        if ((from_pos==None) and (to_pos == None)):
            #pprint(s_list[0])
            vacancy_offer_from, vacancy_offer_to = s_list[0].split('-')
            vacancy_offer_from = int(vacancy_offer_from)
            vacancy_offer_to = int(vacancy_offer_to)
    return vacancy_offer_from, vacancy_offer_to,vacancy_offer_currency

def find_vacancies(min_salary):
    lclient = MongoClient('localhost', 27017)
    ldb = lclient['jobs_database']
    found_vacancies = list(ldb.collectionHH.find({'$or':[{'vacancy_offer_from':{'$gt': min_salary}}, {'vacancy_offer_to':{'$gt': min_salary}}]}))
    return found_vacancies

#составим список существующих ID HH
client = MongoClient('localhost', 27017)
db = client['jobs_database']
collectionHH = db.collectionHH
existing_id_HH = list(collectionHH.find({},{}))






#db.collectionHH.drop()

exit(1)


vacancies = []




main_link = 'https://hh.ru'
search_link = '/search/vacancy?text=%D0%A0%D0%B0%D0%B7%D1%80%D0%B0%D0%B1%D0%BE%D1%82%D1%87%D0%B8%D0%BA+1%D1%81'
# Разработчик 1С
user_agent = {'User-agent': 'Mozilla/5.0'}

NextPossible = True
count = 0;

while NextPossible:
    response = requests.get(main_link + search_link + '&page=' + str(count), headers=user_agent).text
    print(main_link + search_link + '&page=' + str(count))
    soup = bs(response, 'lxml')
    vacancies_block = soup.find('div', {'class': 'vacancy-serp'})
    vacancies_list = vacancies_block.find_all('div', {'class': 'vacancy-serp-item'})
    vacancies_list = vacancies_block.findChildren(recursive=False)
    #pprint(len(vacancies_list))
    # pprint(vacancies_list)

    for vacancy in vacancies_list:
        vacancy_name_tag  = vacancy.find('a', {'data-qa':'vacancy-serp__vacancy-title'})
        if vacancy_name_tag != None:
            vacancy_url = vacancy_name_tag['href']
            result_id = re.findall(r'/\d{5,8}', vacancy_url)
            try:
                vacancy_id = result_id[0]
            except:
                vacancy_id = None
                print(vacancy_url)

            vacancy_id=vacancy_id.replace('/','')

            search_data = {}
            search_data['_id'] = vacancy_id

            if existing_id_HH.count(search_data) == 0:
                vacancy_name = vacancy_name_tag.getText().strip()
                vacancy_offer_tag = vacancy.find('span', {'data-qa': 'vacancy-serp__vacancy-compensation'})
                vacancy_offer = None
                vacancy_offer_from = None
                vacancy_offer_to = None
                vacancy_offer_currency = None

                if vacancy_offer_tag != None:
                    vacancy_offer = vacancy_offer_tag.getText().strip()
                    vacancy_offer = vacancy_offer.replace(u'\xa0', u'')
                    vacancy_offer_from, vacancy_offer_to, vacancy_offer_currency  =get_salary_attrs(vacancy_offer)

                vacancy_company_tag = vacancy.find('a', {'data-qa': 'vacancy-serp__vacancy-employer'})
                if vacancy_company_tag != None:
                    vacancy_company=vacancy_company_tag.getText()
                vacancy_city = vacancy.find('span', {'data-qa': 'vacancy-serp__vacancy-address'}).getText()

                vacancies_data = {}
                vacancies_data['_id'] = vacancy_id
                vacancies_data['name'] = vacancy_name
                vacancies_data['offer'] = vacancy_offer
                vacancies_data['vacancy_offer_from'] = vacancy_offer_from
                vacancies_data['vacancy_offer_to'] = vacancy_offer_to
                vacancies_data['vacancy_offer_currency'] = vacancy_offer_currency
                vacancies_data['url'] = vacancy_url
                vacancies_data['source'] = main_link
                vacancies_data['company'] = vacancy_company
                vacancies_data['city'] = vacancy_city

                vacancies.append(vacancies_data)

    NextPossibleTag = soup.find('a', {'class': 'bloko-button HH-Pager-Controls-Next HH-Pager-Control'})
    if NextPossibleTag == None:
        NextPossible = False
    count+=1
    #NextPossible = False

df = pd.DataFrame(data=vacancies)
#pprint(df)

# Пишем в БД
client = MongoClient('localhost', 27017)
db = client['jobs_database']
collectionHH = db.collectionHH
for vacancy in vacancies:
    try:
        db.collectionHH.insert_one(vacancy)
    except:
        print('insert record error: ',vacancy)


min_salary = input("Введите уровень ЗП: ")
pprint(find_vacancies(int(min_salary)))

exit(1)




# а тут не получилось (
main_link = 'https://russia.superjob.ru'
search_link = '/vacancy/search/?keywords=%D0%A0%D0%B0%D0%B7%D1%80%D0%B0%D0%B1%D0%BE%D1%82%D1%87%D0%B8%D0%BA%201%D0%A1'
user_agent = {'User-agent': 'Mozilla/5.0'}
# Разработчик 1С


NextPossible = True
count = 1;
while NextPossible:
    # print(count)
    print(main_link + search_link + '&page='+ str(count))
    response = requests.get(main_link + search_link + '&page='+ str(count), headers=user_agent).text
    soup = bs(response, 'lxml')

    vacancies_block = soup.find('div', {'class': '_1ID8B'})
    vacancies_list = vacancies_block.find_all('div', {'class': '_3zucV'})
    #vacancies_list = vacancies_block.findChildren(recursive=False)
    pprint(len(vacancies_list))
    #pprint(vacancies_list)

    for vacancy in vacancies_list:
        vacancy_name_tag = vacancy.find('a', {'class':'icMQ_'})
        if vacancy_name_tag != None:
            vacancy_url = main_link + vacancy_name_tag['href']
            print(vacancy_url)
            result_id = re.findall(r'-\w+', vacancy_url)
            print(result_id)
            if len(result_id) != 0:
                print(result_id[len(result_id)-1])
                vacancy_name = '' #vacancy.find('f-test-text-company-item-salary').getText() span class="_1rS-s"
                vacancy_name_list = vacancy_name_tag.findChildren(recursive=False) #vacancy_name_tag.find_all('span', {'class': '_1rS-s'})
                pprint(vacancy_name_list)
                print('---')
                vacancy_url = vacancy_name_tag['href']

                #class ="icMQ_ _6AfZ9 f-test-link-Programmist-razrabotchik_1S _2JivQ _1UJAN" target="_blank" href="/vakansii/programmist-razrabotchik-1s-34077860.html" > < span class ="_1rS-s" > Программист < / span > - < span class ="_1rS-s" > разработчик < / span > < span class ="_1rS-s" > 1С < / span > < / a >


                vacancies_data = {}

                vacancies_data['name'] = vacancy_name

                vacancies.append(vacancies_data)

    pprint(vacancies)

    NextPossible = False;



pprint(vacancies)



