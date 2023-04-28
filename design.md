# Project Overview

This game is a simple "Space Invaders" clone. The theme of this game is Rebels vs Imperials.

The Rebels are in a A-Wing (the best star fighter) and the imperials are in an array of Imperial designed space craft.

## New Gameplay

### Player Weapons

The updated gameplay I'm adding is multiple weapons - lasers and proton bombs. The proton bombs have a 10 second cooldown before being able to be fired again. Lasers are infinite.

### Multiple enemy types

The tie fighter is the standard enemy star fighter. At regular intervals (to be defined upon testing) a super star destroyer will appear behind the other fighters and move from left->right or right->left and drop probe droids which target the player and explode.

![Super Star Destroyer](Images/ssd.jpeg)

# Behaviour - User Journey


# Planning Diagram - Project Plan

```mermaid
gantt
    title Star Invaders Project Plan
    dateFormat DD-MM-YY
    axisFormat %d-%B
    tickInterval 1week

    section Holidays
    Schools Holidays: 09-04-23,22-04-23

    section Design
    
    Project Overview:05-04-23, 1d
    Project Plan: 06-04-23, 24-04-23
    Behaviours: 24-04-23, 14d
    Programming Logic: 24-04-23, 14d  

    section Implementation
    Find A-Wing: 08-05-23, 1d
    UI: 24-04-23, 4d
    Multiple Enemies:05-04-23, 1d
    Export Game: 01-06-23, 1d
    Code Structure: 08-05-23, 3d
    Testing: 08-04-23, 30d

    section Project Management
    Read Assessment Task: 05-04-23, 1d
    Style Guide: 01-06-23, 7d
    Code Comments: 01-06-23, 7d
    Final Submission: 07-06-23, 1d

```