from lib2to3.pgen2 import driver
from time import sleep




def scroll_to_find_element(locator):
    for i in range(5):
        try:
            driver.find_element(locator)
            return True
        except:
            driver.execute_script(f"window.scrollBy(0, 3000)")
            sleep(0.5)
    return False
