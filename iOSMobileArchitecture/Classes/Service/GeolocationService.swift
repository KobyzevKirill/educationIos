//
//  GeolocationService.swift
//  iOSMobileArchitecture
//
//  Created by Andrey Chernyshev on 22/11/2018.
//  Copyright © 2018 Andrey Chernyshev. All rights reserved.
//

class GeolocationService {
//    Реализация геосервиса, мониторящего геолокацию пользователя. В сервисе два вычисляемых свойства. Первое, возвращает Observable с координатами только раз, получая текущее местоположение и завершается. Второе, возвращает Observable с координатами на протяжении всей подписки и не завершается. Оба Observable должны быть холодными.

//    Создать приватный класс RxCLLocationManagerDelegateProxy, реализующий протоколы DelegateProxy, DelegateProxyType, CLLocationManagerDelegate. Реализовать необходимые методы.

//    Создать расширение Reactive where Base: CLLocationManager. Добавить методы
//    didUpdateLocations(handler: (([CLLocation]) -> ())?)
//    didChangeAuthorizationStatus(handler: ((CLAuthorizationStatus) -> ())?)
//    Замыкания передаются в класс RxCLLocationManagerDelegateProxy, через которые прокидываются соответствующие данные.

//    Получение текущих координат.
//    Задать настройку точности определения кооридант, как наилучшую.
//    В зависимости от статуса запроса геолокации (authorizedAlways, authorizedWhenInUse или notDetermined) выполнить соответствующее действие - запросить координаты или доступ к геолокации.
//    Если пользователь дал разрешение на работу с геолокацией (authorizedAlways или authorizedWhenInUse) - запросить текущее местоположение.

//    Мониторинг координат.
//    Задать настройку точности определения координат, как наилучшую.
//    Задать фильтр на дистанцию в 10 метров.
//    В зависимости от статуса запроса геолокации (authorizedAlways, authorizedWhenInUse или notDetermined) выполнить соответствующее действие - запросить координаты или доступ к геолокации.
//    Если пользователь дал разрешение на работу с геолокацией (authorizedAlways или authorizedWhenInUse) - запросить текущее местоположение.
}
