# FEMA-vs-S.H.I.E.L.D.

## Overview

An analysis of FEMA disaster data through the lens of a hypothetical response from superhumans from the MCU and Marvel Comics.

## Takeaways
SO far really I've got is that hurricanes are really darn expensive, occur frequently, and are a general giant PITA. I plan to do a little more looking into these to see what response over time has looked like; I know generally that there are building codes that have been implemented to help mitigate the strength of winds and such. This might give me a direction to look for effective hero use.

## The Pitch

Welcome to S.H.I.E.L.D. B.A.S.H. (Background Analytics, S.H.I.E.L.D. Headquarters). Your first assignment will be to a team that is working to determine other possible occupations for the superhumans in our program. Your specific task is to see if a FEMA contract would be tenable.

Using recent FEMA Disaster Declarations and Public Assistance Application information, identify any disasters that are likely targets for superhuman intervention. Propose
a response team from our database of known friendly superhumans appropriate in size and scale.

## The Data
The data sources I am using can be found here:

[FEMA Disaster Declarations](https://www.fema.gov/openfema-dataset-disaster-declarations-summaries-v1)

[FEMA Public Assistance Projects](https://www.fema.gov/openfema-dataset-public-assistance-funded-projects-details-v1)

[Hero Dataset](https://www.kaggle.com/claudiodavi/superhero-set#super_hero_powers.csv)

Quality issues:
The superhumans Dataset could be more complete. Specifically I would like to have a more precise base location to aid in transport. Further, relative strengths will need to be determined. I cannot send a pyrokinetic out to deal with a forest fire in CA if he can only handle flames the size of his hands.

## Approach to the Problem
First, I'm working to see if there are some kinds of disasters that might be good subjects for hero intervention. Since the prompt specifies recent, I am restricting my search to after 2000.
Within disasters I am looking up:
 - costly disasters
 - frequently/regularly occurring/predictable disasters
 - all of the above
Then to try and get a direction for what sort of powers might be useful, I am also looking at the sort of damage is done, using the damageCategory column from the Public Assistance Projects dataset to see:
 - most expensive damage categories
 - most commonly/frequently occurring damage categories

Hurricanes are a low-hanging fruit here, honestly. They (or their attendant damage) are in the top quartile of all these lists, followed by severe storms. Lots of weather-related disasters.

The next step is analyzing heroes.

I propose as an end product a simple dashboard from which an emergent disaster can be selected that will:
 - outline likely damage categories based on the kind of disaster
 - anticipate likely costs that mitigation could lesson
 - suggest superhuman response team complete with information about each team member.
