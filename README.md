# FEMA-vs-S.H.I.E.L.D.

## Overview

An analysis of FEMA disaster data through the lens of a hypothetical response from superhumans from the MCU and Marvel Comics.

## Takeaways
I loved having the opportunity to plan this whole thing myself. I dictated the question, chose the tools, mapped my approach, and designed my own end product. There is nothing that can teach you what you are capable of like a Capstone.   

## The Pitch

Welcome to S.H.I.E.L.D. B.A.S.H. (Background Analytics, S.H.I.E.L.D. Headquarters). You have been assigned to a team that is working to determine possible peacetime activities for the superhumans in the Avengers Initiative. Your specific task is to see if a FEMA collaboration would be tenable.

Using recent FEMA Disaster Declarations and Public Assistance Application data, identify disaster types that are likely targets for superhuman intervention. This could entail prevention, mitigation, or participation in cleanup/repair.

Propose a response team from our database of known friendly superhumans appropriate in size and scale.

The set of superhumans you will be provided has already been screened to determine that they are sufficiently powered to handle themselves in disaster situations.

Transportation is not an issue and should be left out of this analysis.

## The Data
The data sources I am using can be found here:

[FEMA Disaster Declarations](https://www.fema.gov/openfema-dataset-disaster-declarations-summaries-v1)

[FEMA Public Assistance Projects](https://www.fema.gov/openfema-dataset-public-assistance-funded-projects-details-v1)

[Hero Dataset](https://www.kaggle.com/claudiodavi/superhero-set#super_hero_powers.csv)

Supplemental information:

[Explanation of FEMA terms](https://www.fema.gov/pdf/government/grant/pa/fema323_app_handbk.pdf)

[Explanation of Disaster Types](https://www.disasterassistance.gov/information/disaster-types/overview)

## Approach to the Problem
First, I'm working to see if there are some kinds of disasters that might be good subjects for hero intervention. Since the prompt specifies recent, I am restricting my search to after 2000.
Specifically, I want to see:
 - what affects the costs of disasters so I know what type of assistance would be of the most use. For example, would FEMA benefit more from mitigation or cleanup assistance?
 - if I can identify specific disaster types to target for max impact, or would they benefit more from broad-spectrum assistance?

![image](https://user-images.githubusercontent.com/52726447/71870382-5c232680-30db-11ea-9b07-42e9c0d7e141.png)

 In answer to the above, it appears that the only thing that really affects the cost of disasters is the type of disaster: specifically, hurricanes, fire, and severe ice storms.
 Now that I have targets, I want to know if they are worth it. Are they
  - frequent enough to be worth even forming a team?
  - are they predictable such that we can prevent them from even happening, or do we need to focus more on mitigation?

As it turns out, according to the data, all three are regularly seasonal occurrances and tend to affect in the same areas. It should be easy to form teams to combat these disasters. 

The next step is analyzing heroes. After spending some time researching the kind of damage these specific disasters cause, I was able to identify several powers that will come in handy when attempting to prevent them. I complied a list of all the superhumans who possess these abilities, and merged all of this together.


As an end product, I created a simple dashboard that:
 - allows selection of an emergent target disaster from a list.
 - displays average damage costs based on the type of disaster
 - sets benchmark financial goals for mitigation
 - composes superhuman response team tailored to that specific disaster type
 - provides basic data on the select Superhumans and their Powers.
![image](https://user-images.githubusercontent.com/52726447/71870328-2716d400-30db-11ea-88f6-6388aa41081c.png)

 The link to my Tableau presentation can be found [here](https://public.tableau.com/profile/julia5722#!/vizhome/CapstonePresentation_15781034462690/Story1?publish=yes)

The link to my PowerBI Dashboard can be found [here](https://app.powerbi.com/groups/me/reports/cb54ee4f-7600-493d-8bdb-9c891648cfa2/ReportSection6aa850ea400518a819d0)
