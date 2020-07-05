from bs4 import BeautifulSoup as bs
import requests
import pandas as pd
from pprint import pprint

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
            vacancy_offer_from = s_list[from_pos+1]
        except ValueError:
            from_pos = None
        try:
            to_pos = s_list.index('до')
            vacancy_offer_to = s_list[to_pos+1]
        except ValueError:
            to_pos = None
        if ((from_pos==None) and (to_pos == None)):
            #pprint(s_list[0])
            vacancy_offer_from, vacancy_offer_to = s_list[0].split('-')
    return vacancy_offer_from, vacancy_offer_to,vacancy_offer_currency

vacancies = []



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
    vacancies_list = vacancies_block.findChildren(recursive=False)
    pprint(len(vacancies_list))
    pprint(vacancies_list)

    for vacancy in vacancies_list:
        vacancies_data = {}
        vacancy_name = 'test' #vacancy.find('f-test-text-company-item-salary').getText()
        vacancies_data['name'] = vacancy_name

        vacancies.append(vacancies_data)

    pprint(vacancies)

    NextPossible = False;



pprint(vacancies)

exit(1)

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
    #pprint(NextPossibleTag)
    if NextPossibleTag == None:
        NextPossible = False
    count+=1


df = pd.DataFrame(data=vacancies)
pprint(df)

exit(1)

# а тут не получилось (


