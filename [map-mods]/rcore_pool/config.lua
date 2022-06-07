Config = {
    License = 'tumadreesputa', -- Insert your rcore license
    NotificationDistance = 10.0,
    PropsToRemove = {
        vector3(1992.803, 3047.312, 46.22865),
    },

    --[[
        -- To use custom notifications, implement client event handler, example:

        AddEventHandler('rcore_pool:notification', function(serverId, message)
            print(serverId, message)
        end)
    ]]
    CustomNotifications = true,

    --[[
        -- To use custom menu, implement following client handlers
        AddEventHandler('rcore_pool:openMenu', function()
            -- open menu with your system
        end)

        AddEventHandler('rcore_pool:closeMenu', function()
            -- close menu, player has walked far from table
        end)


        -- After selecting game type, trigger one of the following setupTable events
        TriggerEvent('rcore_pool:setupTable', 'BALL_SETUP_8_BALL')
        TriggerEvent('rcore_pool:setupTable', 'BALL_SETUP_STRAIGHT_POOL')
    ]]
    CustomMenu = false,

    --[[
        When you want your players to pay to play pool, set this to true
        AND implement the following server handler in your framework of choice.
        The handler MUST deduct money from the player and then CALL the callback
        if the payment is successful, or inform the player of payment failure.

        This script itself DOES NOT implement ESX/vRP logic, you have to do that yourself.

        AddEventHandler('rcore_pool:payForPool', function(playerServerId, cb)
            print("This should be replaced by deducting money from " .. playerServerId)
            cb() -- successfuly set balls on table
        end)
    ]]
    PayForSettingBalls = false,
    BallSetupCost = nil, -- for example: "$1" or "$200" - any text

    --[[
        You can integrate pool cue into your system with

        SERVERSIDE HANDLERS
            - rcore_pool:onReturnCue - called when player takes cue
            - rcore_pool:onTakeCue   - called when player returns cue

        CLIENTSIDE EVENTS
            - rcore_pool:takeCue   - forces player to take cue in hand
            - rcore_pool:removeCue - removes cue from player's hand

        This prevents players from taking cue from cue rack if `false`
    ]]
    AllowTakePoolCueFromStand = true,

    --[[
        This option is for servers whose anticheats prevents
        this script from setting players invisible.

        When player's ped is blocking camera when aiming,
        set this to true
    ]]
    DoNotRotateAroundTableWhenAiming = false,

    MenuColor = {20, 220, 220},
    Keys = {
        BACK = {code = 200, label = 'INPUT_FRONTEND_PAUSE_ALTERNATE'},
        ENTER = {code = 38, label = 'INPUT_PICKUP'},
        SETUP_MODIFIER = {code = 21, label = 'INPUT_SPRINT'},
        CUE_HIT = {code = 179, label = 'INPUT_CELLPHONE_EXTRA_OPTION'},
        CUE_LEFT = {code = 174, label = 'INPUT_CELLPHONE_LEFT'},
        CUE_RIGHT = {code = 175, label = 'INPUT_CELLPHONE_RIGHT'},
        AIM_SLOWER = {code = 21, label = 'INPUT_SPRINT'},
        BALL_IN_HAND = {code = 29, label = 'INPUT_SPECIAL_ABILITY_SECONDARY'},

        BALL_IN_HAND_LEFT = {code = 174, label = 'INPUT_CELLPHONE_LEFT'},
        BALL_IN_HAND_RIGHT = {code = 175, label = 'INPUT_CELLPHONE_RIGHT'},
        BALL_IN_HAND_UP = {code = 172, label = 'INPUT_CELLPHONE_UP'},
        BALL_IN_HAND_DOWN = {code = 173, label = 'INPUT_CELLPHONE_DOWN'},
    },
    Text = {
        BACK = "Return",
        HIT = "Hit",
        BALL_IN_HAND = "Ball-in-Hand",
        BALL_IN_HAND_BACK = "Return",
        AIM_LEFT = "Point to the left",
        AIM_RIGHT = "Point to the right",
        AIM_SLOWER = "Point slowly",

        POOL = 'Billiards',
        POOL_GAME = 'Billiard game',
        POOL_SUBMENU = 'Setting',
        TYPE_8_BALL = '8-ball',
        TYPE_STRAIGHT = 'Straight pool',

        HINT_SETUP = 'Set up',
        HINT_TAKE_CUE = 'Take Cue',
        HINT_RETURN_CUE = ' Return Cue',
        HINT_HINT_TAKE_CUE = 'You need a cue to play dummy',
        HINT_PLAY = 'Play',

        BALL_IN_HAND_LEFT = 'Left',
        BALL_IN_HAND_RIGHT = 'Right',
        BALL_IN_HAND_UP = 'Up',
        BALL_IN_HAND_DOWN = 'Down',
        BALL_POCKETED = '%s has been potted',
        BALL_IN_HAND_NOTIFY = 'The player has the cue ball in his hand',
        BALL_LABELS = {
            [-1] = 'White Ball',
            [1] = 'Solids 1',
            [2] = 'Solids 2',
            [3] = 'Solids 3',
            [4] = 'Solids 4',
            [5] = 'Solids 5',
            [6] = 'Solids 6',
            [7] = 'Solids 7',
            [8] = 'Black Ball',
            [9] = 'Stripes 9',
            [10] = 'Stripes 10',
            [11] = 'Stripes 11',
            [12] = 'Stripes 12',
            [13] = 'Stripes 13',
            [14] = 'Stripes 14',
            [15] = 'Stripes 15',
         }
    },
}