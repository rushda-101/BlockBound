# BlockBound - Game Design Document

## 1. Project Overview/Game Concept

Title: BlockBound
Genre: 2D Platformer
Platform: PC
Engine: Godot
Programming Language: GDScript
Target Audience: Casual and intermediate players who enjoy skill-based progression games.

BlockBound is a three-level 2D platformer inspired by classic games such as Super Mario Bros. The player navigates through a digital world, collecting coins while avoiding hazards in order to reach the level exit. Each level increases in difficulty through tighter platform spacing, greater hazards and more complex traversal challenges.

The design prioritises mechanical clarity, progressive challenge and reward-driven engagement.

## 2. User and System Requirements (Scrum Style)

### 2.1 User Requirements

User requirements are defined using Scrum-style user stories to reflect player needs.

Core Gameplay Requirements:
* US1 – Movement: 
  As a player, I want to move left and right using WASD so that I can navigate the environment.
* US2 – Jumping: 
  As a player, I want to jump onto platforms so that I can traverse vertical spaces.
* US3 – Coin Collection: 
  As a player, I want to collect coins so that I am rewarded for exploration and skillful movement.
* US4 – Hazard Interaction: 
  As a player, I want hazards to reduce my lives on contact so that the game feels challenging.
* US5 – Lives System: 
  As a player, I want a limited number of lives so that success requires skill and precision.
* US6 – Level Progression: 
  As a player, I want to progress through increasingly difficult levels so that the game remains engaging.
* US7 – Level Completion: 
  As a player, I want a clear goal point so that I understand how to complete each level.

### 2.2 System Requirements

The system must:
* Detect and process WASD input.
* Apply gravity and physics using Godot’s built-in physics engine.
* Remove coins upon collection.
* Update and display score dynamically.
* Track and decrement lives.
* Reset player position upon life loss.
* Transition between Level 1, Level 2 and Level 3.
* Trigger Game Over state when lives reach zero.

  Detect collision between:
  * Player and platforms
  * Player and coins
  * Player and hazards

### 2.3 Prioritisation (MoSCoW Method)

Must Have:
* Player movement and jump
* Collision detection
* Gravity physics
* Coin collection system
* Hazard system
* Lives system
* Three complete levels
* Level transition system

Should Have:
* Score UI
* Level indicator
* Game Over screen

Could Have:
* Sound effects
* Animated coins
* Background music

This prioritisation ensures the core gameplay loop is completed before polish features.

## 3. Scrum Backlog
|ID|Feature|Description|Acceptance Criteria|Priority|
|B1|Player Controller|Implement movement & jumping|Player moves smoothly and responds instantly to input|Must|
|B2|Gravity System|Apply gravity physics|Player falls naturally and lands correctly|Must|
|B3|Platform Collision|Solid ground detection|Player cannot pass through platforms|Must|
|B4|Coin System|Collectible objects|Coin disappears and score increases|Must|
|B5|Hazard System|Damage zones|Player loses one life on contact|Must|
|B6|Lives System|Life tracking|Lives decrement correctly and trigger Game Over at zero|Must|
|B7|Level 1|Introductory stage|Playable from start to finish|Must|
|B8|Level 2|Intermediate difficulty|Noticeably harder than Level 1|Must|
|B9|Level 3|Advanced difficulty|Requires precise movement|Must|
|B10|Level Transition|Scene change system|Completing level loads next scene|Must|
|B11|UI Display|Score and lives|UI updates correctly during gameplay|Should|
