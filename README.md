# R을 이용한 Big Data 분석

> 2017 충북대학교 빅데이터처리
>
> 교수명 : Aziz Nasridinov



## KNN

- K 최근접 이웃 알고리즘
- 분류나 회귀에 사용되는 비모수 ML 분류 방법
- 전체 데이터를 K개의 군집으로 나누는 알고리즘이다. 그렇기 때문에 사용자가 임의로 적절한 K를 선택해야 하고, K에 분류 정확도가 의존적이다.
- 일반적으로 K가 커질수록 잡음의 영향을 줄어들지만, 너무 커지면 경계가 불분명하다. (K가 N에 가까울 수록 하나씩 서로 다른 군집으로 구분하는 것이기 때문에 분류의 의미가 없음)
- 반대로 K가 작을 수록 분류된 데이터 사이의 연관도가 떨어진다.
- [자세한 설명](https://ko.wikipedia.org/wiki/K-%EC%B5%9C%EA%B7%BC%EC%A0%91_%EC%9D%B4%EC%9B%83_%EC%95%8C%EA%B3%A0%EB%A6%AC%EC%A6%98)



## Decision tree

- 의사결정 나무 / 지도학습

- 의사 결정(Y or N)를 트리 구조로 도식화한 것이다.
- 독립변수들이 유한한 이산값들로 구성되어있다고 가정한다. 연속변수는 유한한 가지로 표현할 수 없기 때문이다.
- [자세한 설명](https://ko.wikipedia.org/wiki/%EA%B2%B0%EC%A0%95_%ED%8A%B8%EB%A6%AC_%ED%95%99%EC%8A%B5%EB%B2%95)



## Regression Analysis

- 회귀분석 / 지도학습
- 연속형 변수들에 대해 두 변수 사이의 모형을 구한뒤 적합도를 측정
- 다중 회귀 분석 : 하나의 종속변수와 여러 독립변수 사이의 관계
- 이때 독립변수들 간에 상관관계가 높은 경우 다중공선성 문제가 발생하여 예측 정확도를 낮출 수 있다.
  - 이 경우 주성분 분석을 하여 독립변수의 갯수를 줄이는 방법이 있다.
- [자세한 설명](https://ko.wikipedia.org/wiki/%ED%9A%8C%EA%B7%80_%EB%B6%84%EC%84%9D)

