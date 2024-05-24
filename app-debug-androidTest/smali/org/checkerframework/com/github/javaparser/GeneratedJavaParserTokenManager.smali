.class public Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;
.super Ljava/lang/Object;
.source "GeneratedJavaParserTokenManager.java"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserConstants;


# static fields
.field static final jjbitVec0:[J

.field static final jjbitVec1:[J

.field static final jjbitVec10:[J

.field static final jjbitVec11:[J

.field static final jjbitVec12:[J

.field static final jjbitVec13:[J

.field static final jjbitVec14:[J

.field static final jjbitVec15:[J

.field static final jjbitVec16:[J

.field static final jjbitVec17:[J

.field static final jjbitVec18:[J

.field static final jjbitVec19:[J

.field static final jjbitVec2:[J

.field static final jjbitVec20:[J

.field static final jjbitVec21:[J

.field static final jjbitVec22:[J

.field static final jjbitVec23:[J

.field static final jjbitVec24:[J

.field static final jjbitVec25:[J

.field static final jjbitVec26:[J

.field static final jjbitVec27:[J

.field static final jjbitVec28:[J

.field static final jjbitVec29:[J

.field static final jjbitVec3:[J

.field static final jjbitVec30:[J

.field static final jjbitVec31:[J

.field static final jjbitVec32:[J

.field static final jjbitVec33:[J

.field static final jjbitVec34:[J

.field static final jjbitVec35:[J

.field static final jjbitVec36:[J

.field static final jjbitVec37:[J

.field static final jjbitVec38:[J

.field static final jjbitVec39:[J

.field static final jjbitVec4:[J

.field static final jjbitVec40:[J

.field static final jjbitVec41:[J

.field static final jjbitVec42:[J

.field static final jjbitVec43:[J

.field static final jjbitVec44:[J

.field static final jjbitVec45:[J

.field static final jjbitVec46:[J

.field static final jjbitVec47:[J

.field static final jjbitVec48:[J

.field static final jjbitVec49:[J

.field static final jjbitVec5:[J

.field static final jjbitVec50:[J

.field static final jjbitVec51:[J

.field static final jjbitVec52:[J

.field static final jjbitVec53:[J

.field static final jjbitVec54:[J

.field static final jjbitVec55:[J

.field static final jjbitVec56:[J

.field static final jjbitVec57:[J

.field static final jjbitVec58:[J

.field static final jjbitVec59:[J

.field static final jjbitVec6:[J

.field static final jjbitVec60:[J

.field static final jjbitVec61:[J

.field static final jjbitVec62:[J

.field static final jjbitVec63:[J

.field static final jjbitVec64:[J

.field static final jjbitVec65:[J

.field static final jjbitVec66:[J

.field static final jjbitVec67:[J

.field static final jjbitVec68:[J

.field static final jjbitVec69:[J

.field static final jjbitVec70:[J

.field static final jjbitVec71:[J

.field static final jjbitVec72:[J

.field static final jjbitVec73:[J

.field static final jjbitVec74:[J

.field static final jjbitVec75:[J

.field static final jjbitVec76:[J

.field static final jjbitVec77:[J

.field static final jjbitVec78:[J

.field static final jjbitVec79:[J

.field static final jjbitVec8:[J

.field static final jjbitVec80:[J

.field static final jjbitVec81:[J

.field static final jjbitVec82:[J

.field static final jjbitVec83:[J

.field static final jjbitVec84:[J

.field static final jjbitVec85:[J

.field static final jjbitVec86:[J

.field static final jjbitVec87:[J

.field static final jjbitVec88:[J

.field static final jjbitVec89:[J

.field static final jjbitVec9:[J

.field static final jjbitVec90:[J

.field static final jjbitVec91:[J

.field static final jjbitVec92:[J

.field static final jjbitVec93:[J

.field public static final jjnewLexState:[I

.field static final jjnextStates:[I

.field public static final jjstrLiteralImages:[Ljava/lang/String;

.field static final jjtoMore:[J

.field static final jjtoSkip:[J

.field static final jjtoSpecial:[J

.field static final jjtoToken:[J

.field public static final lexStateNames:[Ljava/lang/String;


# instance fields
.field private commentsCollection:Lorg/checkerframework/com/github/javaparser/ast/comments/CommentsCollection;

.field protected curChar:I

.field curLexState:I

.field public debugStream:Ljava/io/PrintStream;

.field defaultLexState:I

.field private homeToken:Lorg/checkerframework/com/github/javaparser/JavaToken;

.field private image:Ljava/lang/StringBuilder;

.field protected input_stream:Lorg/checkerframework/com/github/javaparser/SimpleCharStream;

.field private final jjimage:Ljava/lang/StringBuilder;

.field private jjimageLen:I

.field jjmatchedKind:I

.field jjmatchedPos:I

.field jjnewStateCnt:I

.field jjround:I

.field private final jjrounds:[I

.field private final jjstateSet:[I

.field private lengthOfMatch:I

.field private storeTokens:Z

.field private tokenWorkStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lorg/checkerframework/com/github/javaparser/Token;",
            ">;"
        }
    .end annotation
.end field

.field private tokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/JavaToken;",
            ">;"
        }
    .end annotation
.end field

.field private yieldSupported:Z


# direct methods
.method static constructor <clinit>()V
    .locals 148

    .line 1034
    const/4 v0, 0x4

    new-array v1, v0, [J

    fill-array-data v1, :array_0

    sput-object v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec0:[J

    .line 1037
    new-array v1, v0, [J

    fill-array-data v1, :array_1

    sput-object v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec1:[J

    .line 1040
    new-array v1, v0, [J

    fill-array-data v1, :array_2

    sput-object v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec2:[J

    .line 1043
    new-array v1, v0, [J

    fill-array-data v1, :array_3

    sput-object v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec3:[J

    .line 1046
    new-array v1, v0, [J

    fill-array-data v1, :array_4

    sput-object v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec4:[J

    .line 1049
    new-array v1, v0, [J

    fill-array-data v1, :array_5

    sput-object v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec5:[J

    .line 1052
    new-array v1, v0, [J

    fill-array-data v1, :array_6

    sput-object v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec6:[J

    .line 1055
    new-array v1, v0, [J

    fill-array-data v1, :array_7

    sput-object v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec8:[J

    .line 1058
    new-array v1, v0, [J

    fill-array-data v1, :array_8

    sput-object v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec9:[J

    .line 1061
    new-array v1, v0, [J

    fill-array-data v1, :array_9

    sput-object v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec10:[J

    .line 1064
    new-array v1, v0, [J

    fill-array-data v1, :array_a

    sput-object v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec11:[J

    .line 1067
    new-array v1, v0, [J

    fill-array-data v1, :array_b

    sput-object v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec12:[J

    .line 1070
    new-array v1, v0, [J

    fill-array-data v1, :array_c

    sput-object v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec13:[J

    .line 1073
    new-array v1, v0, [J

    fill-array-data v1, :array_d

    sput-object v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec14:[J

    .line 1076
    new-array v1, v0, [J

    fill-array-data v1, :array_e

    sput-object v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec15:[J

    .line 1079
    new-array v1, v0, [J

    fill-array-data v1, :array_f

    sput-object v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec16:[J

    .line 1082
    new-array v1, v0, [J

    fill-array-data v1, :array_10

    sput-object v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec17:[J

    .line 1085
    new-array v1, v0, [J

    fill-array-data v1, :array_11

    sput-object v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec18:[J

    .line 1088
    new-array v1, v0, [J

    fill-array-data v1, :array_12

    sput-object v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec19:[J

    .line 1091
    new-array v1, v0, [J

    fill-array-data v1, :array_13

    sput-object v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec20:[J

    .line 1094
    new-array v1, v0, [J

    fill-array-data v1, :array_14

    sput-object v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec21:[J

    .line 1097
    new-array v1, v0, [J

    fill-array-data v1, :array_15

    sput-object v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec22:[J

    .line 1100
    new-array v1, v0, [J

    fill-array-data v1, :array_16

    sput-object v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec23:[J

    .line 1103
    new-array v1, v0, [J

    fill-array-data v1, :array_17

    sput-object v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec24:[J

    .line 1106
    new-array v1, v0, [J

    fill-array-data v1, :array_18

    sput-object v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec25:[J

    .line 1109
    new-array v1, v0, [J

    fill-array-data v1, :array_19

    sput-object v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec26:[J

    .line 1112
    new-array v1, v0, [J

    fill-array-data v1, :array_1a

    sput-object v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec27:[J

    .line 1115
    new-array v1, v0, [J

    fill-array-data v1, :array_1b

    sput-object v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec28:[J

    .line 1118
    new-array v1, v0, [J

    fill-array-data v1, :array_1c

    sput-object v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec29:[J

    .line 1121
    new-array v1, v0, [J

    fill-array-data v1, :array_1d

    sput-object v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec30:[J

    .line 1124
    new-array v1, v0, [J

    fill-array-data v1, :array_1e

    sput-object v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec31:[J

    .line 1127
    new-array v1, v0, [J

    fill-array-data v1, :array_1f

    sput-object v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec32:[J

    .line 1130
    new-array v1, v0, [J

    fill-array-data v1, :array_20

    sput-object v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec33:[J

    .line 1133
    new-array v1, v0, [J

    fill-array-data v1, :array_21

    sput-object v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec34:[J

    .line 1136
    new-array v1, v0, [J

    fill-array-data v1, :array_22

    sput-object v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec35:[J

    .line 1139
    new-array v1, v0, [J

    fill-array-data v1, :array_23

    sput-object v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec36:[J

    .line 1142
    new-array v1, v0, [J

    fill-array-data v1, :array_24

    sput-object v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec37:[J

    .line 1145
    new-array v1, v0, [J

    fill-array-data v1, :array_25

    sput-object v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec38:[J

    .line 1148
    new-array v1, v0, [J

    fill-array-data v1, :array_26

    sput-object v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec39:[J

    .line 1151
    new-array v1, v0, [J

    fill-array-data v1, :array_27

    sput-object v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec40:[J

    .line 1154
    new-array v1, v0, [J

    fill-array-data v1, :array_28

    sput-object v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec41:[J

    .line 1157
    new-array v1, v0, [J

    fill-array-data v1, :array_29

    sput-object v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec42:[J

    .line 1160
    new-array v1, v0, [J

    fill-array-data v1, :array_2a

    sput-object v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec43:[J

    .line 1163
    new-array v1, v0, [J

    fill-array-data v1, :array_2b

    sput-object v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec44:[J

    .line 1166
    new-array v1, v0, [J

    fill-array-data v1, :array_2c

    sput-object v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec45:[J

    .line 1169
    new-array v1, v0, [J

    fill-array-data v1, :array_2d

    sput-object v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec46:[J

    .line 1172
    new-array v1, v0, [J

    fill-array-data v1, :array_2e

    sput-object v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec47:[J

    .line 1175
    new-array v1, v0, [J

    fill-array-data v1, :array_2f

    sput-object v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec48:[J

    .line 1178
    new-array v1, v0, [J

    fill-array-data v1, :array_30

    sput-object v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec49:[J

    .line 1181
    new-array v1, v0, [J

    fill-array-data v1, :array_31

    sput-object v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec50:[J

    .line 1184
    new-array v1, v0, [J

    fill-array-data v1, :array_32

    sput-object v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec51:[J

    .line 1187
    new-array v1, v0, [J

    fill-array-data v1, :array_33

    sput-object v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec52:[J

    .line 1190
    new-array v1, v0, [J

    fill-array-data v1, :array_34

    sput-object v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec53:[J

    .line 1193
    new-array v1, v0, [J

    fill-array-data v1, :array_35

    sput-object v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec54:[J

    .line 1196
    new-array v1, v0, [J

    fill-array-data v1, :array_36

    sput-object v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec55:[J

    .line 1199
    new-array v1, v0, [J

    fill-array-data v1, :array_37

    sput-object v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec56:[J

    .line 1202
    new-array v1, v0, [J

    fill-array-data v1, :array_38

    sput-object v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec57:[J

    .line 1205
    new-array v1, v0, [J

    fill-array-data v1, :array_39

    sput-object v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec58:[J

    .line 1208
    new-array v1, v0, [J

    fill-array-data v1, :array_3a

    sput-object v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec59:[J

    .line 1211
    new-array v1, v0, [J

    fill-array-data v1, :array_3b

    sput-object v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec60:[J

    .line 1214
    new-array v1, v0, [J

    fill-array-data v1, :array_3c

    sput-object v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec61:[J

    .line 1217
    new-array v1, v0, [J

    fill-array-data v1, :array_3d

    sput-object v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec62:[J

    .line 1220
    new-array v1, v0, [J

    fill-array-data v1, :array_3e

    sput-object v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec63:[J

    .line 1223
    new-array v1, v0, [J

    fill-array-data v1, :array_3f

    sput-object v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec64:[J

    .line 1226
    new-array v1, v0, [J

    fill-array-data v1, :array_40

    sput-object v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec65:[J

    .line 1229
    new-array v1, v0, [J

    fill-array-data v1, :array_41

    sput-object v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec66:[J

    .line 1232
    new-array v1, v0, [J

    fill-array-data v1, :array_42

    sput-object v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec67:[J

    .line 1235
    new-array v1, v0, [J

    fill-array-data v1, :array_43

    sput-object v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec68:[J

    .line 1238
    new-array v1, v0, [J

    fill-array-data v1, :array_44

    sput-object v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec69:[J

    .line 1241
    new-array v1, v0, [J

    fill-array-data v1, :array_45

    sput-object v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec70:[J

    .line 1244
    new-array v1, v0, [J

    fill-array-data v1, :array_46

    sput-object v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec71:[J

    .line 1247
    new-array v1, v0, [J

    fill-array-data v1, :array_47

    sput-object v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec72:[J

    .line 1250
    new-array v1, v0, [J

    fill-array-data v1, :array_48

    sput-object v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec73:[J

    .line 1253
    new-array v1, v0, [J

    fill-array-data v1, :array_49

    sput-object v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec74:[J

    .line 1256
    new-array v1, v0, [J

    fill-array-data v1, :array_4a

    sput-object v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec75:[J

    .line 1259
    new-array v1, v0, [J

    fill-array-data v1, :array_4b

    sput-object v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec76:[J

    .line 1262
    new-array v1, v0, [J

    fill-array-data v1, :array_4c

    sput-object v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec77:[J

    .line 1265
    new-array v1, v0, [J

    fill-array-data v1, :array_4d

    sput-object v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec78:[J

    .line 1268
    new-array v1, v0, [J

    fill-array-data v1, :array_4e

    sput-object v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec79:[J

    .line 1271
    new-array v1, v0, [J

    fill-array-data v1, :array_4f

    sput-object v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec80:[J

    .line 1274
    new-array v1, v0, [J

    fill-array-data v1, :array_50

    sput-object v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec81:[J

    .line 1277
    new-array v1, v0, [J

    fill-array-data v1, :array_51

    sput-object v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec82:[J

    .line 1280
    new-array v1, v0, [J

    fill-array-data v1, :array_52

    sput-object v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec83:[J

    .line 1283
    new-array v1, v0, [J

    fill-array-data v1, :array_53

    sput-object v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec84:[J

    .line 1286
    new-array v1, v0, [J

    fill-array-data v1, :array_54

    sput-object v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec85:[J

    .line 1289
    new-array v1, v0, [J

    fill-array-data v1, :array_55

    sput-object v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec86:[J

    .line 1292
    new-array v1, v0, [J

    fill-array-data v1, :array_56

    sput-object v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec87:[J

    .line 1295
    new-array v1, v0, [J

    fill-array-data v1, :array_57

    sput-object v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec88:[J

    .line 1298
    new-array v1, v0, [J

    fill-array-data v1, :array_58

    sput-object v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec89:[J

    .line 1301
    new-array v1, v0, [J

    fill-array-data v1, :array_59

    sput-object v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec90:[J

    .line 1304
    new-array v1, v0, [J

    fill-array-data v1, :array_5a

    sput-object v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec91:[J

    .line 1307
    new-array v1, v0, [J

    fill-array-data v1, :array_5b

    sput-object v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec92:[J

    .line 1310
    new-array v0, v0, [J

    fill-array-data v0, :array_5c

    sput-object v0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec93:[J

    .line 2554
    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, "abstract"

    const-string v13, "assert"

    const-string v14, "boolean"

    const-string v15, "break"

    const-string v16, "byte"

    const-string v17, "case"

    const-string v18, "catch"

    const-string v19, "char"

    const-string v20, "class"

    const-string v21, "const"

    const-string v22, "continue"

    const-string v23, "default"

    const-string v24, "do"

    const-string v25, "double"

    const-string v26, "else"

    const-string v27, "enum"

    const-string v28, "extends"

    const-string v29, "false"

    const-string v30, "final"

    const-string v31, "finally"

    const-string v32, "float"

    const-string v33, "for"

    const-string v34, "goto"

    const-string v35, "if"

    const-string v36, "implements"

    const-string v37, "import"

    const-string v38, "instanceof"

    const-string v39, "int"

    const-string v40, "interface"

    const-string v41, "long"

    const-string v42, "native"

    const-string v43, "new"

    const-string v44, "null"

    const-string v45, "package"

    const-string v46, "private"

    const-string v47, "protected"

    const-string v48, "public"

    const-string v49, "return"

    const-string v50, "short"

    const-string v51, "static"

    const-string v52, "strictfp"

    const-string v53, "super"

    const-string v54, "switch"

    const-string v55, "synchronized"

    const-string v56, "this"

    const-string v57, "throw"

    const-string v58, "throws"

    const-string v59, "transient"

    const-string v60, "true"

    const-string v61, "try"

    const-string v62, "void"

    const-string v63, "volatile"

    const-string v64, "while"

    const-string v65, "yield"

    const-string v66, "requires"

    const-string v67, "to"

    const-string v68, "with"

    const-string v69, "open"

    const-string v70, "opens"

    const-string v71, "uses"

    const-string v72, "module"

    const-string v73, "exports"

    const-string v74, "provides"

    const-string v75, "transitive"

    const/16 v76, 0x0

    const/16 v77, 0x0

    const/16 v78, 0x0

    const/16 v79, 0x0

    const/16 v80, 0x0

    const/16 v81, 0x0

    const/16 v82, 0x0

    const/16 v83, 0x0

    const/16 v84, 0x0

    const/16 v85, 0x0

    const/16 v86, 0x0

    const/16 v87, 0x0

    const/16 v88, 0x0

    const/16 v89, 0x0

    const/16 v90, 0x0

    const/16 v91, 0x0

    const/16 v92, 0x0

    const/16 v93, 0x0

    const/16 v94, 0x0

    const/16 v95, 0x0

    const/16 v96, 0x0

    const-string v97, "("

    const-string v98, ")"

    const-string v99, "{"

    const-string v100, "}"

    const-string v101, "["

    const-string v102, "]"

    const-string v103, ";"

    const-string v104, ","

    const-string v105, "."

    const-string v106, "@"

    const-string v107, "="

    const-string v108, "<"

    const-string v109, "!"

    const-string v110, "~"

    const-string v111, "?"

    const-string v112, ":"

    const-string v113, "=="

    const-string v114, "<="

    const-string v115, ">="

    const-string v116, "!="

    const-string v117, "||"

    const-string v118, "&&"

    const-string v119, "++"

    const-string v120, "--"

    const-string v121, "+"

    const-string v122, "-"

    const-string v123, "*"

    const-string v124, "/"

    const-string v125, "&"

    const-string v126, "|"

    const-string v127, "^"

    const-string v128, "%"

    const-string v129, "<<"

    const-string v130, "+="

    const-string v131, "-="

    const-string v132, "*="

    const-string v133, "/="

    const-string v134, "&="

    const-string v135, "|="

    const-string v136, "^="

    const-string v137, "%="

    const-string v138, "<<="

    const-string v139, ">>="

    const-string v140, ">>>="

    const-string v141, "..."

    const-string v142, "->"

    const-string v143, "::"

    const-string v144, ">>>"

    const-string v145, ">>"

    const-string v146, ">"

    const-string v147, "\u001a"

    filled-new-array/range {v1 .. v147}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    .line 2607
    const/16 v0, 0x99

    new-array v0, v0, [I

    fill-array-data v0, :array_5d

    sput-object v0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnextStates:[I

    .line 3140
    const-string v0, "IN_MULTI_LINE_COMMENT"

    const-string v1, "IN_TEXT_BLOCK"

    const-string v2, "DEFAULT"

    const-string v3, "IN_JAVADOC_COMMENT"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->lexStateNames:[Ljava/lang/String;

    .line 3148
    const/16 v0, 0x93

    new-array v0, v0, [I

    fill-array-data v0, :array_5e

    sput-object v0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewLexState:[I

    .line 3156
    const/4 v0, 0x3

    new-array v1, v0, [J

    fill-array-data v1, :array_5f

    sput-object v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjtoToken:[J

    .line 3159
    new-array v1, v0, [J

    fill-array-data v1, :array_60

    sput-object v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjtoSkip:[J

    .line 3162
    new-array v1, v0, [J

    fill-array-data v1, :array_61

    sput-object v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjtoSpecial:[J

    .line 3165
    new-array v0, v0, [J

    fill-array-data v0, :array_62

    sput-object v0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjtoMore:[J

    return-void

    :array_0
    .array-data 8
        0x0
        0x0
        0x100000020L
        0x0
    .end array-data

    :array_1
    .array-data 8
        0x0
        0x0
        0x1
        0x0
    .end array-data

    :array_2
    .array-data 8
        0x4000
        0x0
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 8
        0x830000003fffL
        0x180000000L
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 8
        0x1
        0x0
        0x0
        0x0
    .end array-data

    :array_5
    .array-data 8
        0x0
        0x0
        0x0
        -0x8000000000000000L
    .end array-data

    :array_6
    .array-data 8
        -0x2
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_7
    .array-data 8
        0x0
        0x0
        -0x1
        -0x1
    .end array-data

    :array_8
    .array-data 8
        -0xfffffbfddfffeL
        -0x2001
        -0xfd080000001L
        0x12000000ff7fffffL    # 5.532909929101298E-222
    .end array-data

    :array_9
    .array-data 8
        0x0
        0x0
        0x420043c00000000L    # 8.217560002996165E-289
        -0x80000000800001L
    .end array-data

    :array_a
    .array-data 8
        -0x1
        -0x1
        -0x1
        0x501f0003ffc3L
    .end array-data

    :array_b
    .array-data 8
        0x0
        -0x4321000000000000L
        -0x4000028c0L
        -0x40000000000001L
    .end array-data

    :array_c
    .array-data 8
        -0x1
        -0x1
        -0x3fd
        -0x1
    .end array-data

    :array_d
    .array-data 8
        -0x1000000000001L
        -0x1fd800001L
        0x80ff
        0x707ffffff0000L
    .end array-data

    :array_e
    .array-data 8
        -0xfffff800L
        -0x13ffffffff801L
        -0x1
        -0x63ff3f9fffd00001L    # -8.466137176805716E-174
    .end array-data

    :array_f
    .array-data 8
        0xfffffffd0000L
        -0x2000
        0x2003fffffffffL
        0x43007fffffffc00L
    .end array-data

    :array_10
    .array-data 8
        0x110043fffffL
        0x7ff01ffffffL
        0x3fdfffff00000000L    # 0.4999997615814209
        0x0
    .end array-data

    :array_11
    .array-data 8
        0x23fffffffffffff0L
        -0x1fffc00ff0000L
        0x23c5fdfffff99fe1L
        0x180f0003b0004000L    # 8.493276643181594E-193
    .end array-data

    :array_12
    .array-data 8
        0x36dfdfffff987e0L
        0x1c00005e000000L
        0x23edfdfffffbbfe0L
        0x202000300010000L
    .end array-data

    :array_13
    .array-data 8
        0x23edfdfffff99fe0L
        0x20003b0000000L
        0x3ffc718d63dc7e8L
        0x200000000010000L
    .end array-data

    :array_14
    .array-data 8
        0x23fffdfffffddfe0L
        0x307000000L
        0x23effdfffffddfe1L
        0x6000340000000L
    .end array-data

    :array_15
    .array-data 8
        0x27fffffffffddfe0L    # 5.0758836745528E-116
        -0x3fffffc7f8fc000L    # -1.949069311162676E289
        0x2ffbfffffc7fffe0L    # 1.5113294858812394E-77
        0x7f
    .end array-data

    :array_16
    .array-data 8
        -0x7ff2000000000002L    # -1.9469396261938E-308
        0x7f
        0x200decaefef02596L
        0xf000005fL
    .end array-data

    :array_17
    .array-data 8
        0x1
        0x1ffffffffeffL
        0x1f00
        0x0
    .end array-data

    :array_18
    .array-data 8
        -0x7ffff80000000001L    # -4.3458473798964E-311
        -0x1e3f9dc3c10000L
        -0xffffbffdL
        -0x80000000000df41L
    .end array-data

    :array_19
    .array-data 8
        -0x1
        -0xc280c201L
        0x7f3dffffffff3dffL    # 8.229186103142133E304
        -0x8000c3
    .end array-data

    :array_1a
    .array-data 8
        -0xc20001
        0x7ffffff
        -0xffff0001L
        0x3f3fffffffffffffL    # 4.8828124999999995E-4
    .end array-data

    :array_1b
    .array-data 8
        -0x1
        -0x600000000001L
        -0xf8000002L
        0x1ffc7ffffffffffL    # 4.7456455000888675E-299
    .end array-data

    :array_1c
    .array-data 8
        0x3ffff0003dfffL
        0x1dfff0003ffffL
        0xfffffffffffffL
        0x18800000
    .end array-data

    :array_1d
    .array-data 8
        -0x100000000L
        0xffffffffffffffL
        -0xfa0000000061L
        0x3fffffffffffffL
    .end array-data

    :array_1e
    .array-data 8
        0x7fffffff
        0x1f3fffffff0000L
        -0xf00000000001L
        0x3ff
    .end array-data

    :array_1f
    .array-data 8
        -0xff800001L
        0x1fffff
        0x8000000000L
        0x0
    .end array-data

    :array_20
    .array-data 8
        0xfffffffffffe0L
        0xfe0
        -0x3ff3ffe00000008L
        0x3fffffffffL
    .end array-data

    :array_21
    .array-data 8
        0xfffffffffL
        0x3ffffffffc00e000L    # 1.9999999851115717
        0x1ff
        0x63de0000000000L
    .end array-data

    :array_22
    .array-data 8
        -0x1
        -0x1
        -0x1
        0x0
    .end array-data

    :array_23
    .array-data 8
        -0xc0c00001L
        0x3fffffffaaff3f3fL    # 1.9999996833393678
        0x5fdfffffffffffffL    # 6.703903964971298E153
        0x1fdc1fff0fcf1fdcL
    .end array-data

    :array_24
    .array-data 8
        -0x8000000000000000L
        -0x7ffdffffffefffffL    # -2.78134232831466E-309
        -0xe0010000L
        0x0
    .end array-data

    :array_25
    .array-data 8
        -0xc0042afc1d0037cL    # -5.681154081315589E250
        -0xffffbc20L
        0x1ff
        0x0
    .end array-data

    :array_26
    .array-data 8
        -0x800000000001L
        -0x80000001L
        -0x1
        0xc781fffffffffL
    .end array-data

    :array_27
    .array-data 8
        -0xdf4000000001L
        0x80ffffffffffL    # 7.00767890008367E-310
        0x7f7f7f7f007fffffL    # 1.3824168762625489E306
        0x7f7f7f7f
    .end array-data

    :array_28
    .array-data 8
        0x800000000000L
        0x0
        0x0
        0x0
    .end array-data

    :array_29
    .array-data 8
        0x1f3e03fe000000e0L
        -0x2
        -0x11f800001L
        -0x800000000000001L
    .end array-data

    :array_2a
    .array-data 8
        -0x1800000000020L
        -0x1
        0x7ffffff00007fffL
        -0x1000000000000L
    .end array-data

    :array_2b
    .array-data 8
        -0x1
        -0x1
        0x3fffffffffffffL
        0x0
    .end array-data

    :array_2c
    .array-data 8
        -0x1
        -0x1
        -0x1
        0x7ffffffffffL
    .end array-data

    :array_2d
    .array-data 8
        -0x1
        -0x1
        0x1fff
        0x3fffffffffff0000L    # 1.999999999985448
    .end array-data

    :array_2e
    .array-data 8
        0xc00ffff1fffL
        -0x7fff800000000001L    # -6.95335580783495E-310
        -0xc0000001L
        0xffffffffffffL
    .end array-data

    :array_2f
    .array-data 8
        -0x300800000L
        -0x1
        0xff7ffffffff9ffL    # 7.177198237999585E-304
        -0x80000000000000L
    .end array-data

    :array_30
    .array-data 8
        0x1000007fffff7bbL
        0xfffffffffffffL
        0xffffffffffffcL
        0x28fc000000000000L
    .end array-data

    :array_31
    .array-data 8
        -0xffc000000400L
        0x1fffffff0000007fL
        0x7fffffffffff0L
        0x7c00ffdf00008000L
    .end array-data

    :array_32
    .array-data 8
        0x1ffffffffffL
        -0x3b800000fffff009L    # -9.444728462143949E21
        0x3e62ffffffffffffL    # 3.539025783538818E-8
        0x1c07ff38000005L
    .end array-data

    :array_33
    .array-data 8
        -0x8080ff818182L
        -0xffc008000001L
        -0x1
        0x7ffffffffL
    .end array-data

    :array_34
    .array-data 8
        -0x1
        -0x1
        -0xfff000000001L
        0xffffffffffff87fL
    .end array-data

    :array_35
    .array-data 8
        -0x1
        -0xc00000000001L
        -0x1
        0x3ffffff
    .end array-data

    :array_36
    .array-data 8
        0x5f7ffdffa0f8007fL    # 1.0472290754707465E152
        -0x25
        0x3ffffffffffffL    # 5.562684646268E-309
        -0x80000
    .end array-data

    :array_37
    .array-data 8
        0x3fffffffffffffffL    # 1.9999999999999998
        -0x10000
        -0x30001
        0x1fff0000000000ffL
    .end array-data

    :array_38
    .array-data 8
        0x18000000000000L
        -0x20fdffffff2000L
        -0x1
        0x1fffffffffffffffL
    .end array-data

    :array_39
    .array-data 8
        -0x78000001fffffff0L    # -3.785763385344934E-270
        -0x3ff8000002L
        0x7fffffffffffffffL
        0x631cfcfcfcL
    .end array-data

    :array_3a
    .array-data 8
        0x0
        0x0
        0x420243cffffffffL
        -0x80000000800001L
    .end array-data

    :array_3b
    .array-data 8
        -0x1
        -0x4320000000000001L    # -1.7763568394002503E-15
        -0x4000028c0L
        -0x40000000000001L
    .end array-data

    :array_3c
    .array-data 8
        -0x1
        -0x1
        -0x305
        -0x1
    .end array-data

    :array_3d
    .array-data 8
        -0x1000000000001L
        -0x1fd800001L
        -0x4000000000017f01L    # -1.9999999999782287
        0x707ffffff00b6L
    .end array-data

    :array_3e
    .array-data 8
        -0xe800f7c1L
        -0x3c0000000001L
        -0x1
        -0x6000020040100001L
    .end array-data

    :array_3f
    .array-data 8
        -0x8000
        -0x1801
        0x3ffffffffffffL    # 5.562684646268E-309
        0x43fffffffffffffL
    .end array-data

    :array_40
    .array-data 8
        0x3fffffffffffL
        0x7ff0fffffffL
        0x3fdfffff00000000L    # 0.4999997615814209
        -0x100000
    .end array-data

    :array_41
    .array-data 8
        -0x1
        -0x1003000000001L
        -0xc3a020000066011L    # -4.920563630680279E249
        0x180fffcfb080799fL    # 8.767035431669737E-193
    .end array-data

    :array_42
    .array-data 8
        -0x2c92020000067812L    # -7.820181112755368E93
        0x3fffc05e023987L    # 1.780005075410458E-307
        -0xc12020000044012L
        -0x1fd0030fffec441L    # -9.9403624954003E298
    .end array-data

    :array_43
    .array-data 8
        -0xc12020000066012L
        0x2ffcfb0c0399fL
        -0x3c0038e729c23814L    # -3.663721990367627E19
        0x200ffc000813dc7L
    .end array-data

    :array_44
    .array-data 8
        -0x1c00020000022011L    # -4.945400361409657E173
        0xffcf07603ddfL
        -0xc10020000022011L
        0x6ffcf40603ddfL
    .end array-data

    :array_45
    .array-data 8
        -0x22011
        -0x3ff00307f0f8221L    # -2.070789083843392E289
        0x2ffbfffffc7fffecL    # 1.5113294858812417E-77
        0xcffc0ff5f847fL
    .end array-data

    :array_46
    .array-data 8
        -0x7800000000000002L
        0x3ff7fff    # 3.3139994E-316
        0x3bffecaefef02596L
        0xf3ff3f5fL
    .end array-data

    :array_47
    .array-data 8
        -0x3d5ffc00fcffffffL    # -8.804674666496002E12
        -0x1e00000000101L
        0x1ffffffffeffffdfL
        0x40
    .end array-data

    :array_48
    .array-data 8
        -0x1
        -0xfc01
        -0xc0000001L
        -0x80000000000df41L
    .end array-data

    :array_49
    .array-data 8
        -0xc20001
        0xe7ffffffL
        -0xffff0001L
        0x3f3fffffffffffffL    # 4.8828124999999995E-4
    .end array-data

    :array_4a
    .array-data 8
        0x1fffff001fdfffL
        0xddfff000fffffL
        -0x1
        0x3ff388fffffL
    .end array-data

    :array_4b
    .array-data 8
        -0xfc008800L
        0xffffffffffffffL
        -0xf80000000001L
        0x3fffffffffffffL
    .end array-data

    :array_4c
    .array-data 8
        0xfff0fff7fffffffL
        0x1f3fffffffffc0L
        -0xf00000000001L
        0x3ff03ff
    .end array-data

    :array_4d
    .array-data 8
        -0xf0000001L
        -0x6000000080000001L
        0x3fff008003ff03ffL    # 1.9376220851993364
        0x0
    .end array-data

    :array_4e
    .array-data 8
        -0x1
        0xff80003ff0fffL
        -0x1
        0xfffffffffffffL
    .end array-data

    :array_4f
    .array-data 8
        0xffffffffffffffL
        0x3fffffffffffe3ffL    # 1.9999999999984082
        0x1ff
        0x3fffffffff70000L
    .end array-data

    :array_50
    .array-data 8
        -0x1
        -0x1
        -0x1
        -0x400000000000001L    # -1.9490628022799996E289
    .end array-data

    :array_51
    .array-data 8
        -0x7fff83ffffff0800L    # -6.7360634419769E-310
        -0x7ffd0020ffefffffL    # -4.171313231270643E-309
        -0xe0010000L
        0x1ffe21fff0000L
    .end array-data

    :array_52
    .array-data 8
        -0x800000000001L
        -0x80000001L
        -0x1
        0xff81fffffffffL
    .end array-data

    :array_53
    .array-data 8
        -0xdf4000000001L
        -0x7fff7f0000000001L    # -7.00767890008367E-310
        0x7f7f7f7f007fffffL    # 1.3824168762625489E306
        -0x80808081L
    .end array-data

    :array_54
    .array-data 8
        0x1f3efffe000000e0L
        -0x2
        -0x119800001L
        -0x800000000000001L
    .end array-data

    :array_55
    .array-data 8
        0xfffffff1fffL
        -0x400f000000000001L    # -1.0624999999999998
        -0x1
        0x3ffffffffffffL    # 5.562684646268E-309
    .end array-data

    :array_56
    .array-data 8
        0x10000ffffffffffL
        0xfffffffffffffL
        -0x1
        0x28ffffff03ff003fL
    .end array-data

    :array_57
    .array-data 8
        -0xc00000000001L
        0x1fffffff000fffffL
        -0x1
        0x7fffffff03ff8001L
    .end array-data

    :array_58
    .array-data 8
        0x7fffffffffffffL
        -0x3800000fc00c001L    # -4.98959843175794E291
        -0x1
        0x7cffff38000007L
    .end array-data

    :array_59
    .array-data 8
        -0x8080ff818182L
        -0xffc008000001L
        -0x1
        0x3ff37ffffffffffL
    .end array-data

    :array_5a
    .array-data 8
        0x5f7ffdffe0f8007fL    # 1.0472292003406885E152
        -0x25
        0x3ffffffffffffL    # 5.562684646268E-309
        -0x80000
    .end array-data

    :array_5b
    .array-data 8
        0x18ffff0000ffffL
        -0x20fdffffff2000L
        -0x1
        -0x6000000000000001L
    .end array-data

    :array_5c
    .array-data 8
        -0x78000001fc00fff0L    # -3.785763413523551E-270
        -0x3ff8000002L
        0x7fffffffffffffffL
        0xe0000631cfcfcfcL    # 2.9996771357166486E-241
    .end array-data

    :array_5d
    .array-data 4
        0x3e
        0x3f
        0x40
        0x41
        0x42
        0x43
        0x44
        0x45
        0xa
        0x4b
        0x4c
        0x4d
        0x53
        0x54
        0x55
        0x38
        0x3c
        0x1c
        0x1d
        0x24
        0x25
        0xd
        0xf
        0x1a
        0x60
        0x64
        0x67
        0x6b
        0x6f
        0x72
        0x76
        0x83
        0x3
        0x4
        0x5
        0xa
        0x8
        0xa
        0xb
        0x7
        0x8
        0xa
        0xb
        0x1c
        0x1d
        0x27
        0x24
        0x25
        0x48
        0xa
        0x4a
        0x47
        0x48
        0xa
        0x4a
        0x50
        0xa
        0x52
        0x4f
        0x50
        0xa
        0x52
        0x56
        0x59
        0xa
        0x57
        0x58
        0x59
        0xa
        0x5c
        0xa
        0x5e
        0x5b
        0x5c
        0xa
        0x5e
        0x62
        0x63
        0x40
        0x65
        0x66
        0x40
        0x69
        0x6a
        0x40
        0x78
        0x79
        0x7a
        0x7c
        0x7d
        0x7e
        0x81
        0x82
        0xa
        0x85
        0x86
        0x87
        0x88
        0x8b
        0x8c
        0xa
        0x1e
        0x26
        0x28
        0x3
        0x4
        0x6
        0x7
        0x8
        0x9
        0x10
        0x11
        0x13
        0x3e
        0x3f
        0x41
        0x42
        0x43
        0x44
        0x46
        0x47
        0x48
        0x49
        0x4b
        0x4c
        0x4e
        0x4f
        0x50
        0x51
        0x53
        0x54
        0x57
        0x58
        0x5a
        0x5b
        0x5c
        0x5d
        0x65
        0x66
        0x69
        0x6a
        0x70
        0x71
        0x74
        0x75
        0x7f
        0x80
        0x81
        0x82
        0x89
        0x8a
        0x8b
        0x8c
    .end array-data

    :array_5e
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x1
        0x2
        0x0
        0x0
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x3
        0x0
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_5f
    .array-data 8
        -0x7ff
        -0xd4fde001L
        0x7ffff
    .end array-data

    :array_60
    .array-data 8
        0x33e
        0x0
        0x0
    .end array-data

    :array_61
    .array-data 8
        0x33e
        0x0
        0x0
    .end array-data

    :array_62
    .array-data 8
        0x4c0
        0x14000000
        0x0
    .end array-data
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/SimpleCharStream;)V
    .locals 2
    .param p1, "stream"    # Lorg/checkerframework/com/github/javaparser/SimpleCharStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stream"
        }
    .end annotation

    .line 3085
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->tokens:Ljava/util/List;

    .line 48
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/comments/CommentsCollection;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/comments/CommentsCollection;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->commentsCollection:Lorg/checkerframework/com/github/javaparser/ast/comments/CommentsCollection;

    .line 50
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->tokenWorkStack:Ljava/util/Stack;

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->yieldSupported:Z

    .line 113
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iput-object v1, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->debugStream:Ljava/io/PrintStream;

    .line 2872
    iput v0, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->curLexState:I

    .line 2873
    iput v0, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->defaultLexState:I

    .line 3170
    const/16 v0, 0x8d

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjrounds:[I

    .line 3171
    const/16 v0, 0x11a

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjstateSet:[I

    .line 3172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjimage:Ljava/lang/StringBuilder;

    .line 3173
    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->image:Ljava/lang/StringBuilder;

    .line 3090
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->input_stream:Lorg/checkerframework/com/github/javaparser/SimpleCharStream;

    .line 3091
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/SimpleCharStream;I)V
    .locals 2
    .param p1, "stream"    # Lorg/checkerframework/com/github/javaparser/SimpleCharStream;
    .param p2, "lexState"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "stream",
            "lexState"
        }
    .end annotation

    .line 3094
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->tokens:Ljava/util/List;

    .line 48
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/comments/CommentsCollection;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/comments/CommentsCollection;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->commentsCollection:Lorg/checkerframework/com/github/javaparser/ast/comments/CommentsCollection;

    .line 50
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->tokenWorkStack:Ljava/util/Stack;

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->yieldSupported:Z

    .line 113
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iput-object v1, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->debugStream:Ljava/io/PrintStream;

    .line 2872
    iput v0, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->curLexState:I

    .line 2873
    iput v0, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->defaultLexState:I

    .line 3170
    const/16 v0, 0x8d

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjrounds:[I

    .line 3171
    const/16 v0, 0x11a

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjstateSet:[I

    .line 3172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjimage:Ljava/lang/StringBuilder;

    .line 3173
    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->image:Ljava/lang/StringBuilder;

    .line 3095
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->ReInit(Lorg/checkerframework/com/github/javaparser/SimpleCharStream;)V

    .line 3096
    invoke-virtual {p0, p2}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->SwitchTo(I)V

    .line 3097
    return-void
.end method

.method private CommonTokenAction(Lorg/checkerframework/com/github/javaparser/Token;)V
    .locals 2
    .param p1, "token"    # Lorg/checkerframework/com/github/javaparser/Token;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation

    .line 88
    nop

    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->tokenWorkStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object p1, p1, Lorg/checkerframework/com/github/javaparser/Token;->specialToken:Lorg/checkerframework/com/github/javaparser/Token;

    .line 90
    if-nez p1, :cond_0

    .line 93
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->tokenWorkStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 94
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->tokenWorkStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    move-object p1, v0

    check-cast p1, Lorg/checkerframework/com/github/javaparser/Token;

    .line 95
    new-instance v0, Lorg/checkerframework/com/github/javaparser/JavaToken;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->tokens:Ljava/util/List;

    invoke-direct {v0, p1, v1}, Lorg/checkerframework/com/github/javaparser/JavaToken;-><init>(Lorg/checkerframework/com/github/javaparser/Token;Ljava/util/List;)V

    iput-object v0, p1, Lorg/checkerframework/com/github/javaparser/Token;->javaToken:Lorg/checkerframework/com/github/javaparser/JavaToken;

    .line 97
    iget-boolean v0, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->storeTokens:Z

    if-eqz v0, :cond_2

    .line 98
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->tokens:Ljava/util/List;

    iget-object v1, p1, Lorg/checkerframework/com/github/javaparser/Token;->javaToken:Lorg/checkerframework/com/github/javaparser/JavaToken;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    :cond_2
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->homeToken:Lorg/checkerframework/com/github/javaparser/JavaToken;

    if-nez v0, :cond_3

    .line 102
    iget-object v0, p1, Lorg/checkerframework/com/github/javaparser/Token;->javaToken:Lorg/checkerframework/com/github/javaparser/JavaToken;

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->homeToken:Lorg/checkerframework/com/github/javaparser/JavaToken;

    .line 105
    :cond_3
    iget v0, p1, Lorg/checkerframework/com/github/javaparser/Token;->kind:I

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/TokenTypes;->isComment(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManagerBase;->createCommentFromToken(Lorg/checkerframework/com/github/javaparser/Token;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    move-result-object v0

    .line 107
    .local v0, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->commentsCollection:Lorg/checkerframework/com/github/javaparser/ast/comments/CommentsCollection;

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/comments/CommentsCollection;->addComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)V

    .line 108
    .end local v0    # "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    goto :goto_0

    .line 110
    :cond_4
    return-void
.end method

.method private ReInitRounds()V
    .locals 3

    .line 3116
    const v0, -0x7fffffff

    iput v0, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjround:I

    .line 3117
    const/16 v0, 0x8d

    .local v0, "i":I
    :goto_0
    add-int/lit8 v1, v0, -0x1

    .end local v0    # "i":I
    .local v1, "i":I
    if-lez v0, :cond_0

    .line 3118
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjrounds:[I

    const/high16 v2, -0x80000000

    aput v2, v0, v1

    move v0, v1

    goto :goto_0

    .line 3119
    :cond_0
    return-void
.end method

.method private jjAddStates(II)V
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "start",
            "end"
        }
    .end annotation

    .line 3068
    nop

    :goto_0
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjstateSet:[I

    iget v1, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    sget-object v2, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnextStates:[I

    aget v2, v2, p1

    aput v2, v0, v1

    .line 3069
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "start":I
    .local v0, "start":I
    if-ne p1, p2, :cond_0

    .line 3070
    return-void

    .line 3069
    :cond_0
    move p1, v0

    goto :goto_0
.end method

.method private static final jjCanMove_0(IIIJJ)Z
    .locals 6
    .param p0, "hiByte"    # I
    .param p1, "i1"    # I
    .param p2, "i2"    # I
    .param p3, "l1"    # J
    .param p5, "l2"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "hiByte",
            "i1",
            "i2",
            "l1",
            "l2"
        }
    .end annotation

    .line 2621
    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    sparse-switch p0, :sswitch_data_0

    .line 2636
    return v3

    .line 2634
    :sswitch_0
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec5:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v1, v4, v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    return v0

    .line 2632
    :sswitch_1
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec4:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v1, v4, v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    return v0

    .line 2630
    :sswitch_2
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec3:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v1, v4, v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move v0, v3

    :goto_2
    return v0

    .line 2628
    :sswitch_3
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec2:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v1, v4, v1

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    move v0, v3

    :goto_3
    return v0

    .line 2626
    :sswitch_4
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec1:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v1, v4, v1

    if-eqz v1, :cond_4

    goto :goto_4

    :cond_4
    move v0, v3

    :goto_4
    return v0

    .line 2624
    :sswitch_5
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec0:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v1, v4, v1

    if-eqz v1, :cond_5

    goto :goto_5

    :cond_5
    move v0, v3

    :goto_5
    return v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_5
        0x16 -> :sswitch_4
        0x18 -> :sswitch_3
        0x20 -> :sswitch_2
        0x30 -> :sswitch_1
        0xfe -> :sswitch_0
    .end sparse-switch
.end method

.method private static final jjCanMove_1(IIIJJ)Z
    .locals 6
    .param p0, "hiByte"    # I
    .param p1, "i1"    # I
    .param p2, "i2"    # I
    .param p3, "l1"    # J
    .param p5, "l2"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "hiByte",
            "i1",
            "i2",
            "l1",
            "l2"
        }
    .end annotation

    .line 2641
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    packed-switch p0, :pswitch_data_0

    .line 2646
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec6:[J

    aget-wide v4, v4, p1

    and-long/2addr v4, p3

    cmp-long v2, v4, v2

    if-eqz v2, :cond_1

    .line 2647
    return v0

    .line 2644
    :pswitch_0
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec8:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    .line 2648
    :cond_1
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private static final jjCanMove_2(IIIJJ)Z
    .locals 6
    .param p0, "hiByte"    # I
    .param p1, "i1"    # I
    .param p2, "i2"    # I
    .param p3, "l1"    # J
    .param p5, "l2"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "hiByte",
            "i1",
            "i2",
            "l1",
            "l2"
        }
    .end annotation

    .line 2653
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    sparse-switch p0, :sswitch_data_0

    .line 2756
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec9:[J

    aget-wide v4, v4, p1

    and-long/2addr v4, p3

    cmp-long v2, v4, v2

    if-eqz v2, :cond_32

    .line 2757
    return v0

    .line 2754
    :sswitch_0
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec58:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    .line 2752
    :sswitch_1
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec57:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    return v0

    .line 2750
    :sswitch_2
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec56:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    return v0

    .line 2748
    :sswitch_3
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec55:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    return v0

    .line 2746
    :sswitch_4
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec54:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_4

    goto :goto_4

    :cond_4
    move v0, v1

    :goto_4
    return v0

    .line 2744
    :sswitch_5
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec53:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_5

    goto :goto_5

    :cond_5
    move v0, v1

    :goto_5
    return v0

    .line 2742
    :sswitch_6
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec52:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_6

    goto :goto_6

    :cond_6
    move v0, v1

    :goto_6
    return v0

    .line 2740
    :sswitch_7
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec51:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_7

    goto :goto_7

    :cond_7
    move v0, v1

    :goto_7
    return v0

    .line 2738
    :sswitch_8
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec50:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_8

    goto :goto_8

    :cond_8
    move v0, v1

    :goto_8
    return v0

    .line 2736
    :sswitch_9
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec49:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_9

    goto :goto_9

    :cond_9
    move v0, v1

    :goto_9
    return v0

    .line 2734
    :sswitch_a
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec48:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_a

    goto :goto_a

    :cond_a
    move v0, v1

    :goto_a
    return v0

    .line 2732
    :sswitch_b
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec47:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_b

    goto :goto_b

    :cond_b
    move v0, v1

    :goto_b
    return v0

    .line 2730
    :sswitch_c
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec46:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_c

    goto :goto_c

    :cond_c
    move v0, v1

    :goto_c
    return v0

    .line 2728
    :sswitch_d
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec45:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_d

    goto :goto_d

    :cond_d
    move v0, v1

    :goto_d
    return v0

    .line 2726
    :sswitch_e
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec44:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_e

    goto :goto_e

    :cond_e
    move v0, v1

    :goto_e
    return v0

    .line 2724
    :sswitch_f
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec43:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_f

    goto :goto_f

    :cond_f
    move v0, v1

    :goto_f
    return v0

    .line 2722
    :sswitch_10
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec42:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_10

    goto :goto_10

    :cond_10
    move v0, v1

    :goto_10
    return v0

    .line 2720
    :sswitch_11
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec41:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_11

    goto :goto_11

    :cond_11
    move v0, v1

    :goto_11
    return v0

    .line 2718
    :sswitch_12
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec40:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_12

    goto :goto_12

    :cond_12
    move v0, v1

    :goto_12
    return v0

    .line 2716
    :sswitch_13
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec39:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_13

    goto :goto_13

    :cond_13
    move v0, v1

    :goto_13
    return v0

    .line 2714
    :sswitch_14
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec38:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_14

    goto :goto_14

    :cond_14
    move v0, v1

    :goto_14
    return v0

    .line 2712
    :sswitch_15
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec37:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_15

    goto :goto_15

    :cond_15
    move v0, v1

    :goto_15
    return v0

    .line 2710
    :sswitch_16
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec36:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_16

    goto :goto_16

    :cond_16
    move v0, v1

    :goto_16
    return v0

    .line 2708
    :sswitch_17
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec35:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_17

    goto :goto_17

    :cond_17
    move v0, v1

    :goto_17
    return v0

    .line 2706
    :sswitch_18
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec34:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_18

    goto :goto_18

    :cond_18
    move v0, v1

    :goto_18
    return v0

    .line 2704
    :sswitch_19
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec33:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_19

    goto :goto_19

    :cond_19
    move v0, v1

    :goto_19
    return v0

    .line 2702
    :sswitch_1a
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec32:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_1a

    goto :goto_1a

    :cond_1a
    move v0, v1

    :goto_1a
    return v0

    .line 2700
    :sswitch_1b
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec31:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_1b

    goto :goto_1b

    :cond_1b
    move v0, v1

    :goto_1b
    return v0

    .line 2698
    :sswitch_1c
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec30:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_1c

    goto :goto_1c

    :cond_1c
    move v0, v1

    :goto_1c
    return v0

    .line 2696
    :sswitch_1d
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec29:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_1d

    goto :goto_1d

    :cond_1d
    move v0, v1

    :goto_1d
    return v0

    .line 2694
    :sswitch_1e
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec28:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_1e

    goto :goto_1e

    :cond_1e
    move v0, v1

    :goto_1e
    return v0

    .line 2692
    :sswitch_1f
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec6:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_1f

    goto :goto_1f

    :cond_1f
    move v0, v1

    :goto_1f
    return v0

    .line 2690
    :sswitch_20
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec27:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_20

    goto :goto_20

    :cond_20
    move v0, v1

    :goto_20
    return v0

    .line 2688
    :sswitch_21
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec26:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_21

    goto :goto_21

    :cond_21
    move v0, v1

    :goto_21
    return v0

    .line 2686
    :sswitch_22
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec25:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_22

    goto :goto_22

    :cond_22
    move v0, v1

    :goto_22
    return v0

    .line 2684
    :sswitch_23
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec24:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_23

    goto :goto_23

    :cond_23
    move v0, v1

    :goto_23
    return v0

    .line 2682
    :sswitch_24
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec23:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_24

    goto :goto_24

    :cond_24
    move v0, v1

    :goto_24
    return v0

    .line 2680
    :sswitch_25
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec22:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_25

    goto :goto_25

    :cond_25
    move v0, v1

    :goto_25
    return v0

    .line 2678
    :sswitch_26
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec21:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_26

    goto :goto_26

    :cond_26
    move v0, v1

    :goto_26
    return v0

    .line 2676
    :sswitch_27
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec20:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_27

    goto :goto_27

    :cond_27
    move v0, v1

    :goto_27
    return v0

    .line 2674
    :sswitch_28
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec19:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_28

    goto :goto_28

    :cond_28
    move v0, v1

    :goto_28
    return v0

    .line 2672
    :sswitch_29
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec18:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_29

    goto :goto_29

    :cond_29
    move v0, v1

    :goto_29
    return v0

    .line 2670
    :sswitch_2a
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec17:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_2a

    goto :goto_2a

    :cond_2a
    move v0, v1

    :goto_2a
    return v0

    .line 2668
    :sswitch_2b
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec16:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_2b

    goto :goto_2b

    :cond_2b
    move v0, v1

    :goto_2b
    return v0

    .line 2666
    :sswitch_2c
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec15:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_2c

    goto :goto_2c

    :cond_2c
    move v0, v1

    :goto_2c
    return v0

    .line 2664
    :sswitch_2d
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec14:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_2d

    goto :goto_2d

    :cond_2d
    move v0, v1

    :goto_2d
    return v0

    .line 2662
    :sswitch_2e
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec13:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_2e

    goto :goto_2e

    :cond_2e
    move v0, v1

    :goto_2e
    return v0

    .line 2660
    :sswitch_2f
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec12:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_2f

    goto :goto_2f

    :cond_2f
    move v0, v1

    :goto_2f
    return v0

    .line 2658
    :sswitch_30
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec11:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_30

    goto :goto_30

    :cond_30
    move v0, v1

    :goto_30
    return v0

    .line 2656
    :sswitch_31
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec10:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_31

    goto :goto_31

    :cond_31
    move v0, v1

    :goto_31
    return v0

    .line 2758
    :cond_32
    return v1

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_31
        0x2 -> :sswitch_30
        0x3 -> :sswitch_2f
        0x4 -> :sswitch_2e
        0x5 -> :sswitch_2d
        0x6 -> :sswitch_2c
        0x7 -> :sswitch_2b
        0x8 -> :sswitch_2a
        0x9 -> :sswitch_29
        0xa -> :sswitch_28
        0xb -> :sswitch_27
        0xc -> :sswitch_26
        0xd -> :sswitch_25
        0xe -> :sswitch_24
        0xf -> :sswitch_23
        0x10 -> :sswitch_22
        0x12 -> :sswitch_21
        0x13 -> :sswitch_20
        0x14 -> :sswitch_1f
        0x16 -> :sswitch_1e
        0x17 -> :sswitch_1d
        0x18 -> :sswitch_1c
        0x19 -> :sswitch_1b
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_19
        0x1c -> :sswitch_18
        0x1d -> :sswitch_17
        0x1f -> :sswitch_16
        0x20 -> :sswitch_15
        0x21 -> :sswitch_14
        0x2c -> :sswitch_13
        0x2d -> :sswitch_12
        0x2e -> :sswitch_11
        0x30 -> :sswitch_10
        0x31 -> :sswitch_f
        0x4d -> :sswitch_e
        0x9f -> :sswitch_d
        0xa4 -> :sswitch_c
        0xa6 -> :sswitch_b
        0xa7 -> :sswitch_a
        0xa8 -> :sswitch_9
        0xa9 -> :sswitch_8
        0xaa -> :sswitch_7
        0xab -> :sswitch_6
        0xd7 -> :sswitch_5
        0xfa -> :sswitch_4
        0xfb -> :sswitch_3
        0xfd -> :sswitch_2
        0xfe -> :sswitch_1
        0xff -> :sswitch_0
    .end sparse-switch
.end method

.method private static final jjCanMove_3(IIIJJ)Z
    .locals 6
    .param p0, "hiByte"    # I
    .param p1, "i1"    # I
    .param p2, "i2"    # I
    .param p3, "l1"    # J
    .param p5, "l2"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "hiByte",
            "i1",
            "i2",
            "l1",
            "l2"
        }
    .end annotation

    .line 2763
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    sparse-switch p0, :sswitch_data_0

    .line 2866
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec9:[J

    aget-wide v4, v4, p1

    and-long/2addr v4, p3

    cmp-long v2, v4, v2

    if-eqz v2, :cond_32

    .line 2867
    return v0

    .line 2864
    :sswitch_0
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec93:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    .line 2862
    :sswitch_1
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec92:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    return v0

    .line 2860
    :sswitch_2
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec56:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    return v0

    .line 2858
    :sswitch_3
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec91:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    return v0

    .line 2856
    :sswitch_4
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec54:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_4

    goto :goto_4

    :cond_4
    move v0, v1

    :goto_4
    return v0

    .line 2854
    :sswitch_5
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec53:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_5

    goto :goto_5

    :cond_5
    move v0, v1

    :goto_5
    return v0

    .line 2852
    :sswitch_6
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec90:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_6

    goto :goto_6

    :cond_6
    move v0, v1

    :goto_6
    return v0

    .line 2850
    :sswitch_7
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec89:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_7

    goto :goto_7

    :cond_7
    move v0, v1

    :goto_7
    return v0

    .line 2848
    :sswitch_8
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec88:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_8

    goto :goto_8

    :cond_8
    move v0, v1

    :goto_8
    return v0

    .line 2846
    :sswitch_9
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec87:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_9

    goto :goto_9

    :cond_9
    move v0, v1

    :goto_9
    return v0

    .line 2844
    :sswitch_a
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec48:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_a

    goto :goto_a

    :cond_a
    move v0, v1

    :goto_a
    return v0

    .line 2842
    :sswitch_b
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec86:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_b

    goto :goto_b

    :cond_b
    move v0, v1

    :goto_b
    return v0

    .line 2840
    :sswitch_c
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec46:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_c

    goto :goto_c

    :cond_c
    move v0, v1

    :goto_c
    return v0

    .line 2838
    :sswitch_d
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec45:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_d

    goto :goto_d

    :cond_d
    move v0, v1

    :goto_d
    return v0

    .line 2836
    :sswitch_e
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec44:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_e

    goto :goto_e

    :cond_e
    move v0, v1

    :goto_e
    return v0

    .line 2834
    :sswitch_f
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec43:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_f

    goto :goto_f

    :cond_f
    move v0, v1

    :goto_f
    return v0

    .line 2832
    :sswitch_10
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec85:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_10

    goto :goto_10

    :cond_10
    move v0, v1

    :goto_10
    return v0

    .line 2830
    :sswitch_11
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec41:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_11

    goto :goto_11

    :cond_11
    move v0, v1

    :goto_11
    return v0

    .line 2828
    :sswitch_12
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec84:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_12

    goto :goto_12

    :cond_12
    move v0, v1

    :goto_12
    return v0

    .line 2826
    :sswitch_13
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec83:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_13

    goto :goto_13

    :cond_13
    move v0, v1

    :goto_13
    return v0

    .line 2824
    :sswitch_14
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec38:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_14

    goto :goto_14

    :cond_14
    move v0, v1

    :goto_14
    return v0

    .line 2822
    :sswitch_15
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec82:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_15

    goto :goto_15

    :cond_15
    move v0, v1

    :goto_15
    return v0

    .line 2820
    :sswitch_16
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec36:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_16

    goto :goto_16

    :cond_16
    move v0, v1

    :goto_16
    return v0

    .line 2818
    :sswitch_17
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec81:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_17

    goto :goto_17

    :cond_17
    move v0, v1

    :goto_17
    return v0

    .line 2816
    :sswitch_18
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec80:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_18

    goto :goto_18

    :cond_18
    move v0, v1

    :goto_18
    return v0

    .line 2814
    :sswitch_19
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec79:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_19

    goto :goto_19

    :cond_19
    move v0, v1

    :goto_19
    return v0

    .line 2812
    :sswitch_1a
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec78:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_1a

    goto :goto_1a

    :cond_1a
    move v0, v1

    :goto_1a
    return v0

    .line 2810
    :sswitch_1b
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec77:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_1b

    goto :goto_1b

    :cond_1b
    move v0, v1

    :goto_1b
    return v0

    .line 2808
    :sswitch_1c
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec76:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_1c

    goto :goto_1c

    :cond_1c
    move v0, v1

    :goto_1c
    return v0

    .line 2806
    :sswitch_1d
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec75:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_1d

    goto :goto_1d

    :cond_1d
    move v0, v1

    :goto_1d
    return v0

    .line 2804
    :sswitch_1e
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec28:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_1e

    goto :goto_1e

    :cond_1e
    move v0, v1

    :goto_1e
    return v0

    .line 2802
    :sswitch_1f
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec6:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_1f

    goto :goto_1f

    :cond_1f
    move v0, v1

    :goto_1f
    return v0

    .line 2800
    :sswitch_20
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec74:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_20

    goto :goto_20

    :cond_20
    move v0, v1

    :goto_20
    return v0

    .line 2798
    :sswitch_21
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec26:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_21

    goto :goto_21

    :cond_21
    move v0, v1

    :goto_21
    return v0

    .line 2796
    :sswitch_22
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec73:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_22

    goto :goto_22

    :cond_22
    move v0, v1

    :goto_22
    return v0

    .line 2794
    :sswitch_23
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec72:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_23

    goto :goto_23

    :cond_23
    move v0, v1

    :goto_23
    return v0

    .line 2792
    :sswitch_24
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec71:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_24

    goto :goto_24

    :cond_24
    move v0, v1

    :goto_24
    return v0

    .line 2790
    :sswitch_25
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec70:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_25

    goto :goto_25

    :cond_25
    move v0, v1

    :goto_25
    return v0

    .line 2788
    :sswitch_26
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec69:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_26

    goto :goto_26

    :cond_26
    move v0, v1

    :goto_26
    return v0

    .line 2786
    :sswitch_27
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec68:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_27

    goto :goto_27

    :cond_27
    move v0, v1

    :goto_27
    return v0

    .line 2784
    :sswitch_28
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec67:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_28

    goto :goto_28

    :cond_28
    move v0, v1

    :goto_28
    return v0

    .line 2782
    :sswitch_29
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec66:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_29

    goto :goto_29

    :cond_29
    move v0, v1

    :goto_29
    return v0

    .line 2780
    :sswitch_2a
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec65:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_2a

    goto :goto_2a

    :cond_2a
    move v0, v1

    :goto_2a
    return v0

    .line 2778
    :sswitch_2b
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec64:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_2b

    goto :goto_2b

    :cond_2b
    move v0, v1

    :goto_2b
    return v0

    .line 2776
    :sswitch_2c
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec63:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_2c

    goto :goto_2c

    :cond_2c
    move v0, v1

    :goto_2c
    return v0

    .line 2774
    :sswitch_2d
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec62:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_2d

    goto :goto_2d

    :cond_2d
    move v0, v1

    :goto_2d
    return v0

    .line 2772
    :sswitch_2e
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec61:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_2e

    goto :goto_2e

    :cond_2e
    move v0, v1

    :goto_2e
    return v0

    .line 2770
    :sswitch_2f
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec60:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_2f

    goto :goto_2f

    :cond_2f
    move v0, v1

    :goto_2f
    return v0

    .line 2768
    :sswitch_30
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec11:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_30

    goto :goto_30

    :cond_30
    move v0, v1

    :goto_30
    return v0

    .line 2766
    :sswitch_31
    sget-object v4, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec59:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_31

    goto :goto_31

    :cond_31
    move v0, v1

    :goto_31
    return v0

    .line 2868
    :cond_32
    return v1

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_31
        0x2 -> :sswitch_30
        0x3 -> :sswitch_2f
        0x4 -> :sswitch_2e
        0x5 -> :sswitch_2d
        0x6 -> :sswitch_2c
        0x7 -> :sswitch_2b
        0x8 -> :sswitch_2a
        0x9 -> :sswitch_29
        0xa -> :sswitch_28
        0xb -> :sswitch_27
        0xc -> :sswitch_26
        0xd -> :sswitch_25
        0xe -> :sswitch_24
        0xf -> :sswitch_23
        0x10 -> :sswitch_22
        0x12 -> :sswitch_21
        0x13 -> :sswitch_20
        0x14 -> :sswitch_1f
        0x16 -> :sswitch_1e
        0x17 -> :sswitch_1d
        0x18 -> :sswitch_1c
        0x19 -> :sswitch_1b
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_19
        0x1c -> :sswitch_18
        0x1d -> :sswitch_17
        0x1f -> :sswitch_16
        0x20 -> :sswitch_15
        0x21 -> :sswitch_14
        0x2c -> :sswitch_13
        0x2d -> :sswitch_12
        0x2e -> :sswitch_11
        0x30 -> :sswitch_10
        0x31 -> :sswitch_f
        0x4d -> :sswitch_e
        0x9f -> :sswitch_d
        0xa4 -> :sswitch_c
        0xa6 -> :sswitch_b
        0xa7 -> :sswitch_a
        0xa8 -> :sswitch_9
        0xa9 -> :sswitch_8
        0xaa -> :sswitch_7
        0xab -> :sswitch_6
        0xd7 -> :sswitch_5
        0xfa -> :sswitch_4
        0xfb -> :sswitch_3
        0xfd -> :sswitch_2
        0xfe -> :sswitch_1
        0xff -> :sswitch_0
    .end sparse-switch
.end method

.method private jjCheckNAdd(I)V
    .locals 5
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 3059
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjrounds:[I

    aget v1, v0, p1

    iget v2, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjround:I

    if-eq v1, v2, :cond_0

    .line 3061
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjstateSet:[I

    iget v3, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    aput p1, v1, v3

    .line 3062
    aput v2, v0, p1

    .line 3064
    :cond_0
    return-void
.end method

.method private jjCheckNAddStates(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "start",
            "end"
        }
    .end annotation

    .line 3080
    nop

    :goto_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnextStates:[I

    aget v0, v0, p1

    invoke-direct {p0, v0}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAdd(I)V

    .line 3081
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "start":I
    .local v0, "start":I
    if-ne p1, p2, :cond_0

    .line 3082
    return-void

    .line 3081
    :cond_0
    move p1, v0

    goto :goto_0
.end method

.method private jjCheckNAddTwoStates(II)V
    .locals 0
    .param p1, "state1"    # I
    .param p2, "state2"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "state1",
            "state2"
        }
    .end annotation

    .line 3073
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAdd(I)V

    .line 3074
    invoke-direct {p0, p2}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAdd(I)V

    .line 3075
    return-void
.end method

.method private jjMoveNfa_0(II)I
    .locals 31
    .param p1, "startState"    # I
    .param p2, "curPos"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "startState",
            "curPos"
        }
    .end annotation

    .line 1315
    move-object/from16 v1, p0

    const/4 v0, 0x0

    .line 1316
    .local v0, "startsAt":I
    const/16 v2, 0x8d

    iput v2, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    .line 1317
    const/4 v2, 0x1

    .line 1318
    .local v2, "i":I
    iget-object v3, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjstateSet:[I

    const/4 v4, 0x0

    aput p1, v3, v4

    .line 1319
    const v3, 0x7fffffff

    move v4, v3

    move v3, v2

    move v2, v0

    move/from16 v0, p2

    .line 1322
    .end local p2    # "curPos":I
    .local v0, "curPos":I
    .local v2, "startsAt":I
    .local v3, "i":I
    .local v4, "kind":I
    :goto_0
    iget v5, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjround:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    iput v5, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjround:I

    const v7, 0x7fffffff

    if-ne v5, v7, :cond_0

    .line 1323
    invoke-direct/range {p0 .. p0}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->ReInitRounds()V

    .line 1324
    :cond_0
    iget v5, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    const/16 v8, 0x22

    const/16 v9, 0x40

    const/16 v10, 0x75

    const/16 v11, 0x2e

    const/16 v15, 0x11

    const/16 v6, 0x14

    const/16 v14, 0x4c

    const/16 v7, 0x5d

    const/16 v12, 0x51

    const-wide/16 v18, 0x0

    if-ge v5, v9, :cond_42

    .line 1326
    const-wide/16 v20, 0x1

    shl-long v20, v20, v5

    .line 1329
    .local v20, "l":J
    :goto_1
    iget-object v5, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjstateSet:[I

    add-int/lit8 v3, v3, -0x1

    aget v22, v5, v3

    const-wide v23, 0x280000000000L

    const/16 v13, 0xa

    const-wide/high16 v26, 0xff000000000000L

    const-wide/high16 v28, 0x3ff000000000000L

    packed-switch v22, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_3

    .line 1369
    :pswitch_1
    const-wide v22, -0x400002401L

    and-long v22, v20, v22

    cmp-long v5, v22, v18

    if-eqz v5, :cond_1

    .line 1370
    invoke-direct {v1, v15, v6}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_3

    .line 1371
    :cond_1
    iget v5, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    if-ne v5, v8, :cond_40

    .line 1373
    const/16 v5, 0x59

    if-le v4, v5, :cond_40

    .line 1374
    const/16 v4, 0x59

    goto/16 :goto_3

    .line 1900
    :pswitch_2
    and-long v22, v20, v28

    cmp-long v5, v22, v18

    if-eqz v5, :cond_40

    .line 1901
    const/16 v5, 0x8b

    const/16 v13, 0x8c

    invoke-direct {v1, v5, v13}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_3

    .line 1893
    :pswitch_3
    and-long v22, v20, v28

    cmp-long v5, v22, v18

    if-nez v5, :cond_2

    .line 1894
    goto/16 :goto_3

    .line 1895
    :cond_2
    if-le v4, v12, :cond_3

    .line 1896
    const/16 v4, 0x51

    .line 1897
    :cond_3
    const/16 v5, 0x62

    const/16 v13, 0x64

    invoke-direct {v1, v5, v13}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddStates(II)V

    .line 1898
    goto/16 :goto_3

    .line 1889
    :pswitch_4
    and-long v22, v20, v23

    cmp-long v13, v22, v18

    if-eqz v13, :cond_40

    .line 1890
    iget v13, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v8, v13, 0x1

    iput v8, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    const/16 v8, 0x8a

    aput v8, v5, v13

    goto/16 :goto_3

    .line 1885
    :pswitch_5
    iget v5, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    if-ne v5, v11, :cond_40

    .line 1886
    const/16 v5, 0x88

    invoke-direct {v1, v5}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_3

    .line 1881
    :pswitch_6
    and-long v23, v20, v28

    cmp-long v5, v23, v18

    if-eqz v5, :cond_40

    .line 1882
    const/16 v5, 0x87

    const/16 v8, 0x88

    invoke-direct {v1, v5, v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_3

    .line 1877
    :pswitch_7
    and-long v23, v20, v28

    cmp-long v5, v23, v18

    if-eqz v5, :cond_40

    .line 1878
    const/16 v5, 0x85

    const/16 v8, 0x86

    invoke-direct {v1, v5, v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_3

    .line 1873
    :pswitch_8
    and-long v23, v20, v28

    cmp-long v5, v23, v18

    if-eqz v5, :cond_40

    .line 1874
    const/16 v5, 0x5e

    const/16 v8, 0x61

    invoke-direct {v1, v5, v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_3

    .line 1866
    :pswitch_9
    and-long v23, v20, v28

    cmp-long v5, v23, v18

    if-nez v5, :cond_4

    .line 1867
    goto/16 :goto_3

    .line 1868
    :cond_4
    if-le v4, v12, :cond_5

    .line 1869
    const/16 v4, 0x51

    .line 1870
    :cond_5
    invoke-direct {v1, v13}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAdd(I)V

    .line 1871
    goto/16 :goto_3

    .line 1861
    :pswitch_a
    and-long v23, v20, v28

    cmp-long v5, v23, v18

    if-eqz v5, :cond_40

    .line 1862
    const/16 v5, 0x81

    const/16 v8, 0x82

    invoke-direct {v1, v5, v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_3

    .line 1854
    :pswitch_b
    and-long v23, v20, v28

    cmp-long v5, v23, v18

    if-nez v5, :cond_6

    .line 1855
    goto/16 :goto_3

    .line 1856
    :cond_6
    if-le v4, v12, :cond_7

    .line 1857
    const/16 v4, 0x51

    .line 1858
    :cond_7
    const/16 v5, 0x5b

    invoke-direct {v1, v5, v7}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddStates(II)V

    .line 1859
    goto/16 :goto_3

    .line 1850
    :pswitch_c
    and-long v23, v20, v23

    cmp-long v8, v23, v18

    if-eqz v8, :cond_40

    .line 1851
    iget v8, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v13, v8, 0x1

    iput v13, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    const/16 v13, 0x80

    aput v13, v5, v8

    goto/16 :goto_3

    .line 1846
    :pswitch_d
    and-long v23, v20, v28

    cmp-long v5, v23, v18

    if-eqz v5, :cond_40

    .line 1847
    const/16 v5, 0x7e

    invoke-direct {v1, v5}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_3

    .line 1842
    :pswitch_e
    and-long v23, v20, v28

    cmp-long v5, v23, v18

    if-eqz v5, :cond_40

    .line 1843
    const/16 v5, 0x7c

    const/16 v8, 0x7d

    invoke-direct {v1, v5, v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_3

    .line 1838
    :pswitch_f
    and-long v23, v20, v28

    cmp-long v5, v23, v18

    if-eqz v5, :cond_40

    .line 1839
    const/16 v5, 0x58

    const/16 v8, 0x5a

    invoke-direct {v1, v5, v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_3

    .line 1834
    :pswitch_10
    iget v8, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    if-ne v8, v11, :cond_40

    .line 1835
    iget v8, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v13, v8, 0x1

    iput v13, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    const/16 v13, 0x7b

    aput v13, v5, v8

    goto/16 :goto_3

    .line 1830
    :pswitch_11
    and-long v23, v20, v28

    cmp-long v5, v23, v18

    if-eqz v5, :cond_40

    .line 1831
    const/16 v5, 0x7a

    invoke-direct {v1, v5}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_3

    .line 1826
    :pswitch_12
    and-long v23, v20, v28

    cmp-long v5, v23, v18

    if-eqz v5, :cond_40

    .line 1827
    const/16 v5, 0x78

    const/16 v8, 0x79

    invoke-direct {v1, v5, v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_3

    .line 1822
    :pswitch_13
    and-long v23, v20, v28

    cmp-long v5, v23, v18

    if-eqz v5, :cond_40

    .line 1823
    const/16 v5, 0x55

    const/16 v8, 0x57

    invoke-direct {v1, v5, v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_3

    .line 1818
    :pswitch_14
    const-wide/high16 v23, 0x3000000000000L

    and-long v23, v20, v23

    cmp-long v5, v23, v18

    if-eqz v5, :cond_40

    if-le v4, v14, :cond_40

    .line 1819
    const/16 v4, 0x4c

    goto/16 :goto_3

    .line 1814
    :pswitch_15
    const-wide/high16 v23, 0x3000000000000L

    and-long v23, v20, v23

    cmp-long v5, v23, v18

    if-eqz v5, :cond_40

    .line 1815
    const/16 v5, 0x74

    invoke-direct {v1, v5, v10}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_3

    .line 1807
    :pswitch_16
    const-wide/high16 v23, 0x3000000000000L

    and-long v23, v20, v23

    cmp-long v5, v23, v18

    if-nez v5, :cond_8

    .line 1808
    goto/16 :goto_3

    .line 1809
    :cond_8
    if-le v4, v14, :cond_9

    .line 1810
    const/16 v4, 0x4c

    .line 1811
    :cond_9
    const/16 v5, 0x74

    invoke-direct {v1, v5, v10}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    .line 1812
    goto/16 :goto_3

    .line 1803
    :pswitch_17
    and-long v23, v20, v26

    cmp-long v5, v23, v18

    if-eqz v5, :cond_40

    if-le v4, v14, :cond_40

    .line 1804
    const/16 v4, 0x4c

    goto/16 :goto_3

    .line 1799
    :pswitch_18
    and-long v23, v20, v26

    cmp-long v5, v23, v18

    if-eqz v5, :cond_40

    .line 1800
    const/16 v5, 0x70

    const/16 v8, 0x71

    invoke-direct {v1, v5, v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_3

    .line 1792
    :pswitch_19
    and-long v23, v20, v26

    cmp-long v5, v23, v18

    if-nez v5, :cond_a

    .line 1793
    goto/16 :goto_3

    .line 1794
    :cond_a
    if-le v4, v14, :cond_b

    .line 1795
    const/16 v4, 0x4c

    .line 1796
    :cond_b
    const/16 v5, 0x70

    const/16 v8, 0x71

    invoke-direct {v1, v5, v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    .line 1797
    goto/16 :goto_3

    .line 1788
    :pswitch_1a
    and-long v23, v20, v28

    cmp-long v5, v23, v18

    if-eqz v5, :cond_40

    .line 1789
    const/16 v5, 0x6d

    const/16 v8, 0x6e

    invoke-direct {v1, v5, v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_3

    .line 1781
    :pswitch_1b
    and-long v23, v20, v28

    cmp-long v5, v23, v18

    if-nez v5, :cond_c

    .line 1782
    goto/16 :goto_3

    .line 1783
    :cond_c
    if-le v4, v14, :cond_d

    .line 1784
    const/16 v4, 0x4c

    .line 1785
    :cond_d
    const/16 v5, 0x6d

    const/16 v8, 0x6e

    invoke-direct {v1, v5, v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    .line 1786
    goto/16 :goto_3

    .line 1777
    :pswitch_1c
    const-wide/high16 v23, 0x3000000000000L

    and-long v23, v20, v23

    cmp-long v5, v23, v18

    if-eqz v5, :cond_40

    .line 1778
    invoke-direct {v1, v9}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_3

    .line 1773
    :pswitch_1d
    const-wide/high16 v23, 0x3000000000000L

    and-long v23, v20, v23

    cmp-long v5, v23, v18

    if-eqz v5, :cond_40

    .line 1774
    const/16 v5, 0x69

    const/16 v8, 0x6a

    invoke-direct {v1, v5, v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_3

    .line 1769
    :pswitch_1e
    const-wide/high16 v23, 0x3000000000000L

    and-long v23, v20, v23

    cmp-long v5, v23, v18

    if-eqz v5, :cond_40

    .line 1770
    const/16 v5, 0x52

    const/16 v8, 0x54

    invoke-direct {v1, v5, v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_3

    .line 1765
    :pswitch_1f
    and-long v23, v20, v26

    cmp-long v5, v23, v18

    if-eqz v5, :cond_40

    .line 1766
    invoke-direct {v1, v9}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_3

    .line 1761
    :pswitch_20
    and-long v23, v20, v26

    cmp-long v5, v23, v18

    if-eqz v5, :cond_40

    .line 1762
    const/16 v5, 0x65

    const/16 v8, 0x66

    invoke-direct {v1, v5, v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_3

    .line 1757
    :pswitch_21
    and-long v23, v20, v26

    cmp-long v5, v23, v18

    if-eqz v5, :cond_40

    .line 1758
    const/16 v5, 0x4f

    invoke-direct {v1, v5, v12}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_3

    .line 1753
    :pswitch_22
    and-long v23, v20, v28

    cmp-long v5, v23, v18

    if-eqz v5, :cond_40

    .line 1754
    const/16 v5, 0x62

    const/16 v8, 0x63

    invoke-direct {v1, v5, v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_3

    .line 1749
    :pswitch_23
    and-long v23, v20, v28

    cmp-long v5, v23, v18

    if-eqz v5, :cond_40

    .line 1750
    const/16 v5, 0x4e

    invoke-direct {v1, v14, v5}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_3

    .line 1745
    :pswitch_24
    iget v5, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    const/16 v8, 0x30

    if-ne v5, v8, :cond_40

    .line 1746
    const/16 v5, 0x18

    const/16 v8, 0x1f

    invoke-direct {v1, v5, v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_3

    .line 1738
    :pswitch_25
    and-long v23, v20, v28

    cmp-long v5, v23, v18

    if-nez v5, :cond_e

    .line 1739
    goto/16 :goto_3

    .line 1740
    :cond_e
    if-le v4, v12, :cond_f

    .line 1741
    const/16 v4, 0x51

    .line 1742
    :cond_f
    const/16 v5, 0x48

    const/16 v8, 0x4b

    invoke-direct {v1, v5, v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddStates(II)V

    .line 1743
    goto/16 :goto_3

    .line 1731
    :pswitch_26
    and-long v23, v20, v28

    cmp-long v5, v23, v18

    if-nez v5, :cond_10

    .line 1732
    goto/16 :goto_3

    .line 1733
    :cond_10
    if-le v4, v12, :cond_11

    .line 1734
    const/16 v4, 0x51

    .line 1735
    :cond_11
    const/16 v5, 0x5b

    invoke-direct {v1, v5, v13}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    .line 1736
    goto/16 :goto_3

    .line 1727
    :pswitch_27
    and-long v23, v20, v28

    cmp-long v5, v23, v18

    if-eqz v5, :cond_40

    .line 1728
    const/16 v5, 0x5c

    invoke-direct {v1, v5, v7}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_3

    .line 1720
    :pswitch_28
    and-long v23, v20, v28

    cmp-long v5, v23, v18

    if-nez v5, :cond_12

    .line 1721
    goto/16 :goto_3

    .line 1722
    :cond_12
    if-le v4, v12, :cond_13

    .line 1723
    const/16 v4, 0x51

    .line 1724
    :cond_13
    const/16 v5, 0x45

    const/16 v8, 0x47

    invoke-direct {v1, v5, v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddStates(II)V

    .line 1725
    goto/16 :goto_3

    .line 1716
    :pswitch_29
    and-long v23, v20, v23

    cmp-long v5, v23, v18

    if-eqz v5, :cond_40

    .line 1717
    const/16 v5, 0x5b

    invoke-direct {v1, v5}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_3

    .line 1709
    :pswitch_2a
    and-long v23, v20, v28

    cmp-long v5, v23, v18

    if-nez v5, :cond_14

    .line 1710
    goto/16 :goto_3

    .line 1711
    :cond_14
    if-le v4, v12, :cond_15

    .line 1712
    const/16 v4, 0x51

    .line 1713
    :cond_15
    const/16 v5, 0x59

    invoke-direct {v1, v5, v13}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    .line 1714
    goto/16 :goto_3

    .line 1705
    :pswitch_2b
    and-long v23, v20, v28

    cmp-long v5, v23, v18

    if-eqz v5, :cond_40

    .line 1706
    const/16 v5, 0x57

    const/16 v8, 0x58

    invoke-direct {v1, v5, v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_3

    .line 1698
    :pswitch_2c
    and-long v23, v20, v28

    cmp-long v5, v23, v18

    if-nez v5, :cond_16

    .line 1699
    goto/16 :goto_3

    .line 1700
    :cond_16
    if-le v4, v12, :cond_17

    .line 1701
    const/16 v4, 0x51

    .line 1702
    :cond_17
    const/16 v5, 0x41

    const/16 v8, 0x44

    invoke-direct {v1, v5, v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddStates(II)V

    .line 1703
    goto/16 :goto_3

    .line 1691
    :pswitch_2d
    iget v5, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    if-eq v5, v11, :cond_18

    .line 1692
    goto/16 :goto_3

    .line 1693
    :cond_18
    if-le v4, v12, :cond_19

    .line 1694
    const/16 v4, 0x51

    .line 1695
    :cond_19
    const/16 v5, 0x3e

    invoke-direct {v1, v5, v9}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddStates(II)V

    .line 1696
    goto/16 :goto_3

    .line 1687
    :pswitch_2e
    and-long v23, v20, v28

    cmp-long v5, v23, v18

    if-eqz v5, :cond_40

    .line 1688
    const/16 v5, 0x55

    invoke-direct {v1, v5}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_3

    .line 1683
    :pswitch_2f
    and-long v23, v20, v28

    cmp-long v5, v23, v18

    if-eqz v5, :cond_40

    .line 1684
    const/16 v5, 0x53

    const/16 v8, 0x54

    invoke-direct {v1, v5, v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_3

    .line 1676
    :pswitch_30
    and-long v23, v20, v28

    cmp-long v5, v23, v18

    if-nez v5, :cond_1a

    .line 1677
    goto/16 :goto_3

    .line 1678
    :cond_1a
    if-le v4, v12, :cond_1b

    .line 1679
    const/16 v4, 0x51

    .line 1680
    :cond_1b
    const/16 v5, 0x3a

    const/16 v8, 0x3d

    invoke-direct {v1, v5, v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddStates(II)V

    .line 1681
    goto/16 :goto_3

    .line 1669
    :pswitch_31
    and-long v23, v20, v28

    cmp-long v5, v23, v18

    if-nez v5, :cond_1c

    .line 1670
    goto/16 :goto_3

    .line 1671
    :cond_1c
    if-le v4, v12, :cond_1d

    .line 1672
    const/16 v4, 0x51

    .line 1673
    :cond_1d
    const/16 v5, 0x4f

    invoke-direct {v1, v5, v13}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    .line 1674
    goto/16 :goto_3

    .line 1665
    :pswitch_32
    and-long v23, v20, v28

    cmp-long v5, v23, v18

    if-eqz v5, :cond_40

    .line 1666
    const/16 v5, 0x50

    invoke-direct {v1, v5, v12}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_3

    .line 1658
    :pswitch_33
    and-long v23, v20, v28

    cmp-long v5, v23, v18

    if-nez v5, :cond_1e

    .line 1659
    goto/16 :goto_3

    .line 1660
    :cond_1e
    if-le v4, v12, :cond_1f

    .line 1661
    const/16 v4, 0x51

    .line 1662
    :cond_1f
    const/16 v5, 0x37

    const/16 v8, 0x39

    invoke-direct {v1, v5, v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddStates(II)V

    .line 1663
    goto/16 :goto_3

    .line 1654
    :pswitch_34
    and-long v23, v20, v23

    cmp-long v5, v23, v18

    if-eqz v5, :cond_40

    .line 1655
    const/16 v5, 0x4f

    invoke-direct {v1, v5}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_3

    .line 1650
    :pswitch_35
    and-long v23, v20, v28

    cmp-long v5, v23, v18

    if-eqz v5, :cond_40

    .line 1651
    const/16 v5, 0x4d

    invoke-direct {v1, v5}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_3

    .line 1646
    :pswitch_36
    and-long v23, v20, v28

    cmp-long v5, v23, v18

    if-eqz v5, :cond_40

    .line 1647
    const/16 v5, 0x4b

    invoke-direct {v1, v5, v14}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_3

    .line 1642
    :pswitch_37
    and-long v23, v20, v28

    cmp-long v5, v23, v18

    if-eqz v5, :cond_40

    .line 1643
    const/16 v5, 0x33

    const/16 v8, 0x36

    invoke-direct {v1, v5, v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_3

    .line 1638
    :pswitch_38
    and-long v23, v20, v28

    cmp-long v5, v23, v18

    if-eqz v5, :cond_40

    .line 1639
    const/16 v5, 0x47

    invoke-direct {v1, v5, v13}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_3

    .line 1634
    :pswitch_39
    and-long v23, v20, v28

    cmp-long v5, v23, v18

    if-eqz v5, :cond_40

    .line 1635
    const/16 v5, 0x48

    const/16 v8, 0x49

    invoke-direct {v1, v5, v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_3

    .line 1630
    :pswitch_3a
    and-long v23, v20, v28

    cmp-long v5, v23, v18

    if-eqz v5, :cond_40

    .line 1631
    const/16 v5, 0x30

    const/16 v8, 0x32

    invoke-direct {v1, v5, v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_3

    .line 1626
    :pswitch_3b
    and-long v23, v20, v23

    cmp-long v5, v23, v18

    if-eqz v5, :cond_40

    .line 1627
    const/16 v5, 0x47

    invoke-direct {v1, v5}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_3

    .line 1622
    :pswitch_3c
    and-long v23, v20, v28

    cmp-long v5, v23, v18

    if-eqz v5, :cond_40

    .line 1623
    const/16 v5, 0x45

    invoke-direct {v1, v5, v13}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_3

    .line 1618
    :pswitch_3d
    and-long v23, v20, v28

    cmp-long v5, v23, v18

    if-eqz v5, :cond_40

    .line 1619
    const/16 v5, 0x43

    const/16 v8, 0x44

    invoke-direct {v1, v5, v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_3

    .line 1614
    :pswitch_3e
    and-long v23, v20, v28

    cmp-long v5, v23, v18

    if-eqz v5, :cond_40

    if-le v4, v14, :cond_40

    .line 1615
    const/16 v4, 0x4c

    goto/16 :goto_3

    .line 1609
    :pswitch_3f
    and-long v23, v20, v28

    cmp-long v5, v23, v18

    if-eqz v5, :cond_40

    .line 1610
    const/16 v5, 0x41

    const/16 v8, 0x42

    invoke-direct {v1, v5, v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_3

    .line 1605
    :pswitch_40
    and-long v23, v20, v28

    cmp-long v5, v23, v18

    if-eqz v5, :cond_40

    .line 1606
    invoke-direct {v1, v9}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_3

    .line 1600
    :pswitch_41
    and-long v23, v20, v28

    cmp-long v5, v23, v18

    if-eqz v5, :cond_40

    .line 1601
    const/16 v5, 0x3e

    const/16 v8, 0x3f

    invoke-direct {v1, v5, v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_3

    .line 1593
    :pswitch_42
    and-long v23, v20, v28

    cmp-long v5, v23, v18

    if-nez v5, :cond_20

    .line 1594
    goto/16 :goto_3

    .line 1595
    :cond_20
    if-le v4, v14, :cond_21

    .line 1596
    const/16 v4, 0x4c

    .line 1597
    :cond_21
    const/4 v5, 0x0

    const/16 v8, 0xe

    invoke-direct {v1, v5, v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddStates(II)V

    .line 1598
    goto/16 :goto_3

    .line 1589
    :pswitch_43
    iget v8, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    const/16 v13, 0x2a

    if-ne v8, v13, :cond_40

    .line 1590
    iget v8, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v13, v8, 0x1

    iput v13, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    const/16 v13, 0x3a

    aput v13, v5, v8

    goto/16 :goto_3

    .line 1585
    :pswitch_44
    const-wide v23, -0x800000000001L

    and-long v23, v20, v23

    cmp-long v5, v23, v18

    if-eqz v5, :cond_40

    const/4 v5, 0x6

    if-le v4, v5, :cond_40

    .line 1586
    const/4 v4, 0x6

    goto/16 :goto_3

    .line 1581
    :pswitch_45
    iget v8, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    const/16 v13, 0x2a

    if-ne v8, v13, :cond_40

    .line 1582
    iget v8, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v13, v8, 0x1

    iput v13, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    const/16 v13, 0x3b

    aput v13, v5, v8

    goto/16 :goto_3

    .line 1574
    :pswitch_46
    const-wide/16 v23, -0x2401

    and-long v23, v20, v23

    cmp-long v5, v23, v18

    if-nez v5, :cond_22

    .line 1575
    goto/16 :goto_3

    .line 1576
    :cond_22
    const/4 v5, 0x5

    if-le v4, v5, :cond_23

    .line 1577
    const/4 v4, 0x5

    .line 1578
    :cond_23
    const/16 v5, 0x39

    invoke-direct {v1, v5}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAdd(I)V

    .line 1579
    goto/16 :goto_3

    .line 1378
    :pswitch_47
    iget v8, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    const/16 v13, 0x2a

    if-ne v8, v13, :cond_24

    .line 1379
    iget v8, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v13, v8, 0x1

    iput v13, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    const/16 v13, 0x3a

    aput v13, v5, v8

    goto/16 :goto_3

    .line 1380
    :cond_24
    const/16 v5, 0x2f

    if-ne v8, v5, :cond_40

    .line 1382
    const/4 v5, 0x5

    if-le v4, v5, :cond_25

    .line 1383
    const/4 v4, 0x5

    .line 1384
    :cond_25
    const/16 v5, 0x39

    invoke-direct {v1, v5}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_3

    .line 1570
    :pswitch_48
    iget v5, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    const/16 v8, 0x2f

    if-ne v5, v8, :cond_40

    .line 1571
    const/16 v5, 0xf

    const/16 v8, 0x10

    invoke-direct {v1, v5, v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_3

    .line 1566
    :pswitch_49
    and-long v23, v20, v28

    cmp-long v8, v23, v18

    if-eqz v8, :cond_40

    .line 1567
    iget v8, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v13, v8, 0x1

    iput v13, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    const/16 v13, 0x35

    aput v13, v5, v8

    goto/16 :goto_3

    .line 1562
    :pswitch_4a
    and-long v23, v20, v28

    cmp-long v8, v23, v18

    if-eqz v8, :cond_40

    .line 1563
    iget v8, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v13, v8, 0x1

    iput v13, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    const/16 v13, 0x34

    aput v13, v5, v8

    goto/16 :goto_3

    .line 1555
    :pswitch_4b
    and-long v23, v20, v28

    cmp-long v5, v23, v18

    if-nez v5, :cond_26

    .line 1556
    goto/16 :goto_3

    .line 1557
    :cond_26
    if-le v4, v7, :cond_27

    .line 1558
    const/16 v4, 0x5d

    .line 1559
    :cond_27
    const/16 v5, 0x31

    const/16 v8, 0x2b

    invoke-direct {v1, v8, v5}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    .line 1560
    goto/16 :goto_3

    .line 1551
    :pswitch_4c
    and-long v23, v20, v28

    cmp-long v5, v23, v18

    if-eqz v5, :cond_40

    .line 1552
    const/16 v5, 0x30

    invoke-direct {v1, v5}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_3

    .line 1546
    :pswitch_4d
    and-long v23, v20, v28

    cmp-long v8, v23, v18

    if-eqz v8, :cond_40

    .line 1547
    iget v8, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v13, v8, 0x1

    iput v13, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    const/16 v13, 0x2f

    aput v13, v5, v8

    goto/16 :goto_3

    .line 1542
    :pswitch_4e
    and-long v23, v20, v28

    cmp-long v8, v23, v18

    if-eqz v8, :cond_40

    .line 1543
    iget v8, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v13, v8, 0x1

    iput v13, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    aput v11, v5, v8

    goto/16 :goto_3

    .line 1333
    :pswitch_4f
    const-wide v23, 0x3ff00100fffc1ffL

    and-long v23, v20, v23

    cmp-long v5, v23, v18

    if-nez v5, :cond_28

    .line 1334
    goto/16 :goto_3

    .line 1335
    :cond_28
    if-le v4, v7, :cond_29

    .line 1336
    const/16 v4, 0x5d

    .line 1337
    :cond_29
    const/16 v5, 0x31

    const/16 v8, 0x2b

    invoke-direct {v1, v8, v5}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    .line 1338
    goto/16 :goto_3

    .line 1535
    :pswitch_50
    iget v5, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    const/16 v8, 0x24

    if-eq v5, v8, :cond_2a

    .line 1536
    goto/16 :goto_3

    .line 1537
    :cond_2a
    if-le v4, v7, :cond_2b

    .line 1538
    const/16 v4, 0x5d

    .line 1539
    :cond_2b
    const/16 v5, 0x31

    const/16 v8, 0x2b

    invoke-direct {v1, v8, v5}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    .line 1540
    goto/16 :goto_3

    .line 1531
    :pswitch_51
    and-long v23, v20, v26

    cmp-long v5, v23, v18

    if-eqz v5, :cond_40

    .line 1532
    const/16 v5, 0x27

    invoke-direct {v1, v5}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_3

    .line 1527
    :pswitch_52
    const-wide/high16 v23, 0xf000000000000L

    and-long v23, v20, v23

    cmp-long v8, v23, v18

    if-eqz v8, :cond_40

    .line 1528
    iget v8, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v13, v8, 0x1

    iput v13, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    const/16 v13, 0x29

    aput v13, v5, v8

    goto/16 :goto_3

    .line 1523
    :pswitch_53
    and-long v23, v20, v26

    cmp-long v5, v23, v18

    if-eqz v5, :cond_40

    .line 1524
    invoke-direct {v1, v15, v6}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_3

    .line 1519
    :pswitch_54
    and-long v23, v20, v26

    cmp-long v5, v23, v18

    if-eqz v5, :cond_40

    .line 1520
    const/16 v5, 0x2f

    const/16 v8, 0x2b

    invoke-direct {v1, v8, v5}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_3

    .line 1515
    :pswitch_55
    iget v5, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    const/16 v8, 0x22

    if-ne v5, v8, :cond_40

    const/16 v5, 0x59

    if-le v4, v5, :cond_40

    .line 1516
    const/16 v4, 0x59

    goto/16 :goto_3

    .line 1511
    :pswitch_56
    and-long v23, v20, v28

    cmp-long v5, v23, v18

    if-eqz v5, :cond_40

    .line 1512
    invoke-direct {v1, v15, v6}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_3

    .line 1507
    :pswitch_57
    and-long v23, v20, v28

    cmp-long v8, v23, v18

    if-eqz v8, :cond_40

    .line 1508
    iget v8, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v13, v8, 0x1

    iput v13, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    const/16 v13, 0x23

    aput v13, v5, v8

    goto/16 :goto_3

    .line 1503
    :pswitch_58
    and-long v23, v20, v28

    cmp-long v8, v23, v18

    if-eqz v8, :cond_40

    .line 1504
    iget v8, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v13, v8, 0x1

    iput v13, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    const/16 v13, 0x22

    aput v13, v5, v8

    goto/16 :goto_3

    .line 1499
    :pswitch_59
    and-long v23, v20, v28

    cmp-long v8, v23, v18

    if-eqz v8, :cond_40

    .line 1500
    iget v8, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v13, v8, 0x1

    iput v13, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    const/16 v13, 0x21

    aput v13, v5, v8

    goto/16 :goto_3

    .line 1495
    :pswitch_5a
    const-wide v23, 0x8400000000L

    and-long v23, v20, v23

    cmp-long v5, v23, v18

    if-eqz v5, :cond_40

    .line 1496
    invoke-direct {v1, v15, v6}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_3

    .line 1491
    :pswitch_5b
    const-wide v23, -0x400002401L

    and-long v23, v20, v23

    cmp-long v5, v23, v18

    if-eqz v5, :cond_40

    .line 1492
    invoke-direct {v1, v15, v6}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_3

    .line 1487
    :pswitch_5c
    iget v5, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    const/16 v8, 0x22

    if-ne v5, v8, :cond_40

    .line 1488
    invoke-direct {v1, v15, v6}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_3

    .line 1483
    :pswitch_5d
    and-long v23, v20, v28

    cmp-long v5, v23, v18

    if-eqz v5, :cond_40

    .line 1484
    const/16 v5, 0xe

    invoke-direct {v1, v5}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_3

    .line 1479
    :pswitch_5e
    and-long v23, v20, v28

    cmp-long v8, v23, v18

    if-eqz v8, :cond_40

    .line 1480
    iget v8, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v13, v8, 0x1

    iput v13, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    const/16 v13, 0x19

    aput v13, v5, v8

    goto/16 :goto_3

    .line 1475
    :pswitch_5f
    and-long v23, v20, v28

    cmp-long v8, v23, v18

    if-eqz v8, :cond_40

    .line 1476
    iget v8, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v13, v8, 0x1

    iput v13, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    const/16 v13, 0x18

    aput v13, v5, v8

    goto/16 :goto_3

    .line 1471
    :pswitch_60
    and-long v23, v20, v28

    cmp-long v8, v23, v18

    if-eqz v8, :cond_40

    .line 1472
    iget v8, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v13, v8, 0x1

    iput v13, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    const/16 v13, 0x17

    aput v13, v5, v8

    goto/16 :goto_3

    .line 1467
    :pswitch_61
    and-long v23, v20, v26

    cmp-long v5, v23, v18

    if-eqz v5, :cond_40

    .line 1468
    const/16 v5, 0x12

    invoke-direct {v1, v5}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_3

    .line 1463
    :pswitch_62
    const-wide/high16 v23, 0xf000000000000L

    and-long v23, v20, v23

    cmp-long v8, v23, v18

    if-eqz v8, :cond_40

    .line 1464
    iget v8, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v13, v8, 0x1

    iput v13, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    aput v6, v5, v8

    goto/16 :goto_3

    .line 1459
    :pswitch_63
    and-long v23, v20, v26

    cmp-long v5, v23, v18

    if-eqz v5, :cond_2c

    .line 1460
    const/16 v5, 0xe

    invoke-direct {v1, v5}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_3

    .line 1459
    :cond_2c
    const/16 v5, 0xe

    goto/16 :goto_3

    .line 1455
    :pswitch_64
    const/16 v5, 0xe

    and-long v23, v20, v26

    cmp-long v8, v23, v18

    if-eqz v8, :cond_40

    .line 1456
    const/16 v8, 0x12

    invoke-direct {v1, v8, v5}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_3

    .line 1451
    :pswitch_65
    const/16 v5, 0xe

    const-wide v23, 0x8400000000L

    and-long v23, v20, v23

    cmp-long v8, v23, v18

    if-eqz v8, :cond_40

    .line 1452
    invoke-direct {v1, v5}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_3

    .line 1447
    :pswitch_66
    iget v5, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    const/16 v8, 0x27

    if-ne v5, v8, :cond_40

    const/16 v5, 0x58

    if-le v4, v5, :cond_40

    .line 1448
    const/16 v4, 0x58

    goto/16 :goto_3

    .line 1443
    :pswitch_67
    const-wide v23, -0x8000002401L

    and-long v23, v20, v23

    cmp-long v5, v23, v18

    if-eqz v5, :cond_40

    .line 1444
    const/16 v5, 0xe

    invoke-direct {v1, v5}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_3

    .line 1439
    :pswitch_68
    iget v5, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    const/16 v8, 0x27

    if-ne v5, v8, :cond_40

    .line 1440
    const/16 v5, 0x15

    const/16 v8, 0x17

    invoke-direct {v1, v5, v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_3

    .line 1432
    :pswitch_69
    and-long v23, v20, v28

    cmp-long v5, v23, v18

    if-nez v5, :cond_2d

    .line 1433
    goto/16 :goto_3

    .line 1434
    :cond_2d
    if-le v4, v12, :cond_2e

    .line 1435
    const/16 v4, 0x51

    .line 1436
    :cond_2e
    const/16 v5, 0x27

    const/16 v8, 0x2a

    invoke-direct {v1, v5, v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddStates(II)V

    .line 1437
    goto/16 :goto_3

    .line 1425
    :pswitch_6a
    and-long v23, v20, v28

    cmp-long v5, v23, v18

    if-nez v5, :cond_2f

    .line 1426
    goto/16 :goto_3

    .line 1427
    :cond_2f
    if-le v4, v12, :cond_30

    .line 1428
    const/16 v4, 0x51

    .line 1429
    :cond_30
    const/4 v5, 0x7

    invoke-direct {v1, v5, v13}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    .line 1430
    goto/16 :goto_3

    .line 1421
    :pswitch_6b
    and-long v23, v20, v28

    cmp-long v5, v23, v18

    if-eqz v5, :cond_40

    .line 1422
    const/16 v5, 0x8

    const/16 v8, 0x9

    invoke-direct {v1, v5, v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_3

    .line 1414
    :pswitch_6c
    and-long v23, v20, v28

    cmp-long v5, v23, v18

    if-nez v5, :cond_31

    .line 1415
    goto/16 :goto_3

    .line 1416
    :cond_31
    if-le v4, v12, :cond_32

    .line 1417
    const/16 v4, 0x51

    .line 1418
    :cond_32
    const/16 v5, 0x24

    const/16 v8, 0x26

    invoke-direct {v1, v5, v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddStates(II)V

    .line 1419
    goto/16 :goto_3

    .line 1410
    :pswitch_6d
    and-long v23, v20, v23

    cmp-long v5, v23, v18

    if-eqz v5, :cond_40

    .line 1411
    const/4 v5, 0x7

    invoke-direct {v1, v5}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_3

    .line 1403
    :pswitch_6e
    and-long v23, v20, v28

    cmp-long v5, v23, v18

    if-nez v5, :cond_33

    .line 1404
    goto/16 :goto_3

    .line 1405
    :cond_33
    if-le v4, v12, :cond_34

    .line 1406
    const/16 v4, 0x51

    .line 1407
    :cond_34
    const/4 v5, 0x5

    invoke-direct {v1, v5, v13}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    .line 1408
    goto/16 :goto_3

    .line 1399
    :pswitch_6f
    and-long v23, v20, v28

    cmp-long v5, v23, v18

    if-eqz v5, :cond_40

    .line 1400
    const/4 v5, 0x3

    const/4 v8, 0x4

    invoke-direct {v1, v5, v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_3

    .line 1392
    :pswitch_70
    and-long v23, v20, v28

    cmp-long v5, v23, v18

    if-nez v5, :cond_35

    .line 1393
    goto/16 :goto_3

    .line 1394
    :cond_35
    if-le v4, v12, :cond_36

    .line 1395
    const/16 v4, 0x51

    .line 1396
    :cond_36
    const/16 v5, 0x20

    const/16 v8, 0x23

    invoke-direct {v1, v5, v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddStates(II)V

    .line 1397
    goto/16 :goto_3

    .line 1388
    :pswitch_71
    iget v8, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    if-ne v8, v11, :cond_40

    .line 1389
    iget v8, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v13, v8, 0x1

    iput v13, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    const/4 v13, 0x2

    aput v13, v5, v8

    goto/16 :goto_3

    .line 1340
    :pswitch_72
    and-long v23, v20, v28

    cmp-long v8, v23, v18

    if-eqz v8, :cond_38

    .line 1342
    if-le v4, v14, :cond_37

    .line 1343
    const/16 v4, 0x4c

    .line 1344
    :cond_37
    const/4 v5, 0x0

    const/16 v8, 0xe

    invoke-direct {v1, v5, v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddStates(II)V

    goto :goto_2

    .line 1346
    :cond_38
    const-wide v23, 0x100001200L

    and-long v23, v20, v23

    cmp-long v8, v23, v18

    if-eqz v8, :cond_39

    .line 1348
    const/4 v5, 0x1

    if-le v4, v5, :cond_3f

    .line 1349
    const/4 v4, 0x1

    goto :goto_2

    .line 1351
    :cond_39
    iget v8, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    const/16 v13, 0x2f

    if-ne v8, v13, :cond_3a

    .line 1352
    const/16 v5, 0xf

    const/16 v8, 0x10

    invoke-direct {v1, v5, v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjAddStates(II)V

    goto :goto_2

    .line 1353
    :cond_3a
    const/16 v13, 0x24

    if-ne v8, v13, :cond_3c

    .line 1355
    if-le v4, v7, :cond_3b

    .line 1356
    const/16 v4, 0x5d

    .line 1357
    :cond_3b
    const/16 v5, 0x31

    const/16 v8, 0x2b

    invoke-direct {v1, v8, v5}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto :goto_2

    .line 1359
    :cond_3c
    const/16 v13, 0x22

    if-ne v8, v13, :cond_3d

    .line 1360
    invoke-direct {v1, v15, v6}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddStates(II)V

    goto :goto_2

    .line 1361
    :cond_3d
    const/16 v13, 0x27

    if-ne v8, v13, :cond_3e

    .line 1362
    const/16 v5, 0x15

    const/16 v8, 0x17

    invoke-direct {v1, v5, v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjAddStates(II)V

    goto :goto_2

    .line 1363
    :cond_3e
    if-ne v8, v11, :cond_3f

    .line 1364
    iget v8, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v13, v8, 0x1

    iput v13, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    const/4 v13, 0x2

    aput v13, v5, v8

    .line 1365
    :cond_3f
    :goto_2
    iget v5, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    const/16 v8, 0x30

    if-ne v5, v8, :cond_40

    .line 1366
    const/16 v5, 0x18

    const/16 v8, 0x1f

    invoke-direct {v1, v5, v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjAddStates(II)V

    .line 1905
    :cond_40
    :goto_3
    if-ne v3, v2, :cond_41

    .line 1906
    .end local v20    # "l":J
    goto/16 :goto_a

    .line 1905
    .restart local v20    # "l":J
    :cond_41
    const/16 v8, 0x22

    goto/16 :goto_1

    .line 1907
    .end local v20    # "l":J
    :cond_42
    const/16 v8, 0x80

    if-ge v5, v8, :cond_9f

    .line 1909
    and-int/lit8 v5, v5, 0x3f

    const-wide/16 v20, 0x1

    shl-long v20, v20, v5

    .line 1912
    .restart local v20    # "l":J
    :goto_4
    iget-object v5, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjstateSet:[I

    add-int/lit8 v3, v3, -0x1

    aget v8, v5, v3

    const/16 v13, 0x5f

    const-wide v23, 0x7e0000007eL

    packed-switch v8, :pswitch_data_1

    :pswitch_73
    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 1935
    :pswitch_74
    const-wide/32 v23, -0x10000001

    and-long v23, v20, v23

    cmp-long v8, v23, v18

    if-eqz v8, :cond_43

    .line 1936
    invoke-direct {v1, v15, v6}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddStates(II)V

    goto :goto_5

    .line 1937
    :cond_43
    iget v8, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    const/16 v13, 0x5c

    if-ne v8, v13, :cond_44

    .line 1938
    iget v8, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v13, v8, 0x1

    iput v13, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    const/16 v13, 0x1f

    aput v13, v5, v8

    .line 1939
    :cond_44
    :goto_5
    iget v5, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    const/16 v8, 0x5c

    if-ne v5, v8, :cond_45

    .line 1940
    const/16 v5, 0x65

    const/16 v8, 0x67

    invoke-direct {v1, v5, v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjAddStates(II)V

    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 1939
    :cond_45
    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 1915
    :pswitch_75
    const-wide v23, -0x7800000178000002L

    and-long v23, v20, v23

    cmp-long v8, v23, v18

    if-eqz v8, :cond_47

    .line 1917
    if-le v4, v7, :cond_46

    .line 1918
    const/16 v4, 0x5d

    .line 1919
    :cond_46
    const/16 v5, 0x31

    const/16 v8, 0x2b

    invoke-direct {v1, v8, v5}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 1921
    :cond_47
    iget v8, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    const/16 v13, 0x5c

    if-ne v8, v13, :cond_48

    .line 1922
    iget v8, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v13, v8, 0x1

    iput v13, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    const/16 v13, 0x2c

    aput v13, v5, v8

    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 1921
    :cond_48
    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2265
    :pswitch_76
    iget v5, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    if-ne v5, v13, :cond_49

    .line 2266
    const/16 v5, 0x97

    const/16 v8, 0x98

    invoke-direct {v1, v5, v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjAddStates(II)V

    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2265
    :cond_49
    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2261
    :pswitch_77
    const-wide v23, 0x1000000010000L

    and-long v23, v20, v23

    cmp-long v5, v23, v18

    if-eqz v5, :cond_4a

    .line 2262
    const/16 v5, 0x95

    const/16 v8, 0x96

    invoke-direct {v1, v5, v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjAddStates(II)V

    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2261
    :cond_4a
    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2257
    :pswitch_78
    and-long v23, v20, v23

    cmp-long v5, v23, v18

    if-eqz v5, :cond_4b

    .line 2258
    const/16 v5, 0x87

    const/16 v8, 0x88

    invoke-direct {v1, v5, v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2257
    :cond_4b
    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2253
    :pswitch_79
    const-wide v23, 0x7e8000007eL

    and-long v23, v20, v23

    cmp-long v5, v23, v18

    if-eqz v5, :cond_4c

    .line 2254
    const/16 v5, 0x85

    const/16 v8, 0x86

    invoke-direct {v1, v5, v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2253
    :cond_4c
    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2249
    :pswitch_7a
    and-long v23, v20, v23

    cmp-long v5, v23, v18

    if-eqz v5, :cond_4d

    .line 2250
    const/16 v5, 0x5e

    const/16 v8, 0x61

    invoke-direct {v1, v5, v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddStates(II)V

    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2249
    :cond_4d
    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2245
    :pswitch_7b
    const-wide v23, 0x100000001000000L

    and-long v23, v20, v23

    cmp-long v8, v23, v18

    if-eqz v8, :cond_4e

    .line 2246
    iget v8, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v13, v8, 0x1

    iput v13, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    const/16 v13, 0x84

    aput v13, v5, v8

    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2245
    :cond_4e
    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2241
    :pswitch_7c
    iget v5, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    if-ne v5, v13, :cond_4f

    .line 2242
    const/16 v5, 0x93

    const/16 v8, 0x94

    invoke-direct {v1, v5, v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjAddStates(II)V

    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2241
    :cond_4f
    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2237
    :pswitch_7d
    const-wide v23, 0x1000000010000L

    and-long v23, v20, v23

    cmp-long v5, v23, v18

    if-eqz v5, :cond_50

    .line 2238
    const/16 v5, 0x91

    const/16 v8, 0x92

    invoke-direct {v1, v5, v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjAddStates(II)V

    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2237
    :cond_50
    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2233
    :pswitch_7e
    and-long v23, v20, v23

    cmp-long v5, v23, v18

    if-eqz v5, :cond_51

    .line 2234
    const/16 v5, 0x7e

    invoke-direct {v1, v5}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAdd(I)V

    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2233
    :cond_51
    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2229
    :pswitch_7f
    const-wide v23, 0x7e8000007eL

    and-long v23, v20, v23

    cmp-long v5, v23, v18

    if-eqz v5, :cond_52

    .line 2230
    const/16 v5, 0x7c

    const/16 v8, 0x7d

    invoke-direct {v1, v5, v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2229
    :cond_52
    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2225
    :pswitch_80
    and-long v23, v20, v23

    cmp-long v5, v23, v18

    if-eqz v5, :cond_53

    .line 2226
    const/16 v5, 0x58

    const/16 v8, 0x5a

    invoke-direct {v1, v5, v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddStates(II)V

    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2225
    :cond_53
    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2221
    :pswitch_81
    and-long v23, v20, v23

    cmp-long v5, v23, v18

    if-eqz v5, :cond_54

    .line 2222
    const/16 v5, 0x7a

    invoke-direct {v1, v5}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAdd(I)V

    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2221
    :cond_54
    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2217
    :pswitch_82
    const-wide v23, 0x7e8000007eL

    and-long v23, v20, v23

    cmp-long v5, v23, v18

    if-eqz v5, :cond_55

    .line 2218
    const/16 v5, 0x78

    const/16 v8, 0x79

    invoke-direct {v1, v5, v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2217
    :cond_55
    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2213
    :pswitch_83
    and-long v23, v20, v23

    cmp-long v5, v23, v18

    if-eqz v5, :cond_56

    .line 2214
    const/16 v5, 0x55

    const/16 v8, 0x57

    invoke-direct {v1, v5, v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddStates(II)V

    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2213
    :cond_56
    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2209
    :pswitch_84
    const-wide v23, 0x100000001000000L

    and-long v23, v20, v23

    cmp-long v5, v23, v18

    if-eqz v5, :cond_57

    .line 2210
    const/16 v5, 0x77

    const/16 v8, 0x7a

    invoke-direct {v1, v5, v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2209
    :cond_57
    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2205
    :pswitch_85
    iget v5, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    if-ne v5, v13, :cond_58

    .line 2206
    const/16 v5, 0x8f

    const/16 v8, 0x90

    invoke-direct {v1, v5, v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjAddStates(II)V

    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2205
    :cond_58
    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2201
    :pswitch_86
    const-wide v23, 0x400000004L

    and-long v23, v20, v23

    cmp-long v8, v23, v18

    if-eqz v8, :cond_59

    .line 2202
    iget v8, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v13, v8, 0x1

    iput v13, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    const/16 v13, 0x73

    aput v13, v5, v8

    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2201
    :cond_59
    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2197
    :pswitch_87
    iget v5, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    if-ne v5, v13, :cond_5a

    .line 2198
    const/16 v5, 0x8d

    const/16 v8, 0x8e

    invoke-direct {v1, v5, v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjAddStates(II)V

    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2197
    :cond_5a
    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2193
    :pswitch_88
    and-long v23, v20, v23

    cmp-long v5, v23, v18

    if-eqz v5, :cond_5b

    if-le v4, v14, :cond_5b

    .line 2194
    const/16 v4, 0x4c

    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2193
    :cond_5b
    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2189
    :pswitch_89
    const-wide v23, 0x7e8000007eL

    and-long v23, v20, v23

    cmp-long v5, v23, v18

    if-eqz v5, :cond_5c

    .line 2190
    const/16 v5, 0x6d

    const/16 v8, 0x6e

    invoke-direct {v1, v5, v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2189
    :cond_5c
    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2182
    :pswitch_8a
    and-long v23, v20, v23

    cmp-long v5, v23, v18

    if-nez v5, :cond_5d

    .line 2183
    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2184
    :cond_5d
    if-le v4, v14, :cond_5e

    .line 2185
    const/16 v4, 0x4c

    .line 2186
    :cond_5e
    const/16 v5, 0x6d

    const/16 v8, 0x6e

    invoke-direct {v1, v5, v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    .line 2187
    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2178
    :pswitch_8b
    const-wide v23, 0x100000001000000L

    and-long v23, v20, v23

    cmp-long v8, v23, v18

    if-eqz v8, :cond_5f

    .line 2179
    iget v8, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v13, v8, 0x1

    iput v13, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    const/16 v13, 0x6c

    aput v13, v5, v8

    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2178
    :cond_5f
    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2174
    :pswitch_8c
    iget v5, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    if-ne v5, v13, :cond_60

    .line 2175
    const/16 v5, 0x8b

    const/16 v8, 0x8c

    invoke-direct {v1, v5, v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjAddStates(II)V

    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2174
    :cond_60
    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2170
    :pswitch_8d
    const-wide v23, 0x400000004L

    and-long v23, v20, v23

    cmp-long v8, v23, v18

    if-eqz v8, :cond_61

    .line 2171
    iget v8, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v13, v8, 0x1

    iput v13, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    const/16 v13, 0x68

    aput v13, v5, v8

    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2170
    :cond_61
    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2166
    :pswitch_8e
    iget v5, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    if-ne v5, v13, :cond_62

    .line 2167
    const/16 v5, 0x89

    const/16 v8, 0x8a

    invoke-direct {v1, v5, v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjAddStates(II)V

    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2166
    :cond_62
    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2162
    :pswitch_8f
    and-long v23, v20, v23

    cmp-long v5, v23, v18

    if-eqz v5, :cond_63

    .line 2163
    invoke-direct {v1, v9}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAdd(I)V

    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2162
    :cond_63
    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2158
    :pswitch_90
    const-wide v23, 0x7e8000007eL

    and-long v23, v20, v23

    cmp-long v5, v23, v18

    if-eqz v5, :cond_64

    .line 2159
    const/16 v5, 0x62

    const/16 v8, 0x63

    invoke-direct {v1, v5, v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2158
    :cond_64
    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2154
    :pswitch_91
    and-long v23, v20, v23

    cmp-long v5, v23, v18

    if-eqz v5, :cond_65

    .line 2155
    const/16 v5, 0x4e

    invoke-direct {v1, v14, v5}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddStates(II)V

    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2154
    :cond_65
    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2150
    :pswitch_92
    const-wide v23, 0x100000001000000L

    and-long v23, v20, v23

    cmp-long v8, v23, v18

    if-eqz v8, :cond_66

    .line 2151
    iget v8, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v13, v8, 0x1

    iput v13, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    const/16 v13, 0x61

    aput v13, v5, v8

    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2150
    :cond_66
    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2146
    :pswitch_93
    iget v5, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    if-ne v5, v13, :cond_67

    .line 2147
    const/16 v5, 0x87

    const/16 v8, 0x88

    invoke-direct {v1, v5, v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjAddStates(II)V

    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2146
    :cond_67
    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2142
    :pswitch_94
    const-wide v23, 0x2000000020L

    and-long v23, v20, v23

    cmp-long v5, v23, v18

    if-eqz v5, :cond_68

    .line 2143
    const/16 v5, 0x85

    const/16 v8, 0x86

    invoke-direct {v1, v5, v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjAddStates(II)V

    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2142
    :cond_68
    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2138
    :pswitch_95
    iget v5, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    if-ne v5, v13, :cond_69

    .line 2139
    const/16 v5, 0x83

    const/16 v8, 0x84

    invoke-direct {v1, v5, v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjAddStates(II)V

    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2138
    :cond_69
    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2134
    :pswitch_96
    iget v5, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    if-ne v5, v13, :cond_6a

    .line 2135
    const/16 v5, 0x81

    const/16 v8, 0x82

    invoke-direct {v1, v5, v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjAddStates(II)V

    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2134
    :cond_6a
    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2130
    :pswitch_97
    iget v5, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    if-ne v5, v13, :cond_6b

    .line 2131
    const/16 v5, 0x7f

    const/16 v8, 0x80

    invoke-direct {v1, v5, v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjAddStates(II)V

    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2130
    :cond_6b
    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2126
    :pswitch_98
    const-wide v23, 0x2000000020L

    and-long v23, v20, v23

    cmp-long v5, v23, v18

    if-eqz v5, :cond_6c

    .line 2127
    const/16 v5, 0x7d

    const/16 v8, 0x7e

    invoke-direct {v1, v5, v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjAddStates(II)V

    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2126
    :cond_6c
    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2122
    :pswitch_99
    iget v5, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    if-ne v5, v13, :cond_6d

    .line 2123
    const/16 v5, 0x7b

    const/16 v8, 0x7c

    invoke-direct {v1, v5, v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjAddStates(II)V

    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2122
    :cond_6d
    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2118
    :pswitch_9a
    iget v5, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    if-ne v5, v13, :cond_6e

    .line 2119
    const/16 v5, 0x79

    const/16 v8, 0x7a

    invoke-direct {v1, v5, v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjAddStates(II)V

    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2118
    :cond_6e
    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2114
    :pswitch_9b
    const-wide v23, 0x2000000020L

    and-long v23, v20, v23

    cmp-long v5, v23, v18

    if-eqz v5, :cond_6f

    .line 2115
    const/16 v5, 0x77

    const/16 v8, 0x78

    invoke-direct {v1, v5, v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjAddStates(II)V

    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2114
    :cond_6f
    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2110
    :pswitch_9c
    iget v5, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    if-ne v5, v13, :cond_70

    .line 2111
    const/16 v5, 0x76

    invoke-direct {v1, v10, v5}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjAddStates(II)V

    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2110
    :cond_70
    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2106
    :pswitch_9d
    iget v5, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    if-ne v5, v13, :cond_71

    .line 2107
    const/16 v5, 0x73

    const/16 v8, 0x74

    invoke-direct {v1, v5, v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjAddStates(II)V

    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2106
    :cond_71
    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2102
    :pswitch_9e
    const-wide v23, 0x100000001000L

    and-long v23, v20, v23

    cmp-long v5, v23, v18

    if-eqz v5, :cond_72

    const/16 v5, 0x4b

    if-le v4, v5, :cond_72

    .line 2103
    const/16 v4, 0x4b

    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2102
    :cond_72
    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2098
    :pswitch_9f
    iget v5, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    if-ne v5, v13, :cond_73

    .line 2099
    const/16 v5, 0x71

    const/16 v8, 0x72

    invoke-direct {v1, v5, v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjAddStates(II)V

    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2098
    :cond_73
    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2094
    :pswitch_a0
    const/4 v5, 0x6

    if-le v4, v5, :cond_74

    .line 2095
    const/4 v4, 0x6

    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2094
    :cond_74
    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2089
    :pswitch_a1
    const/4 v8, 0x5

    if-le v4, v8, :cond_75

    .line 2090
    const/4 v4, 0x5

    .line 2091
    :cond_75
    iget v8, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v13, v8, 0x1

    iput v13, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    const/16 v13, 0x39

    aput v13, v5, v8

    .line 2092
    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2085
    :pswitch_a2
    iget v8, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    const/16 v13, 0x5c

    if-ne v8, v13, :cond_76

    .line 2086
    iget v8, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v13, v8, 0x1

    iput v13, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    const/16 v13, 0x32

    aput v13, v5, v8

    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2085
    :cond_76
    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2081
    :pswitch_a3
    and-long v23, v20, v23

    cmp-long v8, v23, v18

    if-eqz v8, :cond_77

    .line 2082
    iget v8, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v13, v8, 0x1

    iput v13, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    const/16 v13, 0x35

    aput v13, v5, v8

    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2081
    :cond_77
    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2077
    :pswitch_a4
    and-long v23, v20, v23

    cmp-long v8, v23, v18

    if-eqz v8, :cond_78

    .line 2078
    iget v8, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v13, v8, 0x1

    iput v13, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    const/16 v13, 0x34

    aput v13, v5, v8

    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2077
    :cond_78
    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2073
    :pswitch_a5
    iget v8, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    if-ne v8, v10, :cond_79

    .line 2074
    iget v8, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v13, v8, 0x1

    iput v13, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    const/16 v13, 0x33

    aput v13, v5, v8

    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2073
    :cond_79
    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2069
    :pswitch_a6
    iget v8, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    const/16 v13, 0x5c

    if-ne v8, v13, :cond_7a

    .line 2070
    iget v8, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v13, v8, 0x1

    iput v13, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    const/16 v13, 0x2c

    aput v13, v5, v8

    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2069
    :cond_7a
    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2062
    :pswitch_a7
    and-long v23, v20, v23

    cmp-long v5, v23, v18

    if-nez v5, :cond_7b

    .line 2063
    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2064
    :cond_7b
    if-le v4, v7, :cond_7c

    .line 2065
    const/16 v4, 0x5d

    .line 2066
    :cond_7c
    const/16 v5, 0x31

    const/16 v8, 0x2b

    invoke-direct {v1, v8, v5}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    .line 2067
    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2058
    :pswitch_a8
    and-long v23, v20, v23

    cmp-long v5, v23, v18

    if-eqz v5, :cond_7d

    .line 2059
    const/16 v5, 0x30

    invoke-direct {v1, v5}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAdd(I)V

    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2058
    :cond_7d
    const/16 v13, 0x5c

    const/16 v17, 0x2f

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2053
    :pswitch_a9
    and-long v23, v20, v23

    cmp-long v8, v23, v18

    if-eqz v8, :cond_7e

    .line 2054
    iget v8, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v13, v8, 0x1

    iput v13, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    const/16 v17, 0x2f

    aput v17, v5, v8

    const/16 v13, 0x5c

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2053
    :cond_7e
    const/16 v17, 0x2f

    const/16 v13, 0x5c

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2049
    :pswitch_aa
    const/16 v17, 0x2f

    and-long v23, v20, v23

    cmp-long v8, v23, v18

    if-eqz v8, :cond_7f

    .line 2050
    iget v8, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v13, v8, 0x1

    iput v13, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    aput v11, v5, v8

    const/16 v13, 0x5c

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2049
    :cond_7f
    const/16 v13, 0x5c

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2045
    :pswitch_ab
    const/16 v17, 0x2f

    iget v8, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    if-ne v8, v10, :cond_80

    .line 2046
    iget v8, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v13, v8, 0x1

    iput v13, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    const/16 v13, 0x2d

    aput v13, v5, v8

    const/16 v13, 0x5c

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2045
    :cond_80
    const/16 v13, 0x5c

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2038
    :pswitch_ac
    const/16 v17, 0x2f

    const-wide v23, -0x7800000178000002L

    and-long v23, v20, v23

    cmp-long v5, v23, v18

    if-nez v5, :cond_81

    .line 2039
    const/16 v13, 0x5c

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2040
    :cond_81
    if-le v4, v7, :cond_82

    .line 2041
    const/16 v4, 0x5d

    .line 2042
    :cond_82
    const/16 v5, 0x31

    const/16 v8, 0x2b

    invoke-direct {v1, v8, v5}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    .line 2043
    const/16 v13, 0x5c

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2031
    :pswitch_ad
    const/16 v17, 0x2f

    const-wide v23, 0x7fffffe87fffffeL

    and-long v23, v20, v23

    cmp-long v5, v23, v18

    if-nez v5, :cond_83

    .line 2032
    const/16 v13, 0x5c

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2033
    :cond_83
    if-le v4, v7, :cond_84

    .line 2034
    const/16 v4, 0x5d

    .line 2035
    :cond_84
    const/16 v5, 0x31

    const/16 v8, 0x2b

    invoke-direct {v1, v8, v5}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    .line 2036
    const/16 v13, 0x5c

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2027
    :pswitch_ae
    const/16 v17, 0x2f

    iget v8, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    const/16 v13, 0x5c

    if-ne v8, v13, :cond_85

    .line 2028
    iget v8, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v13, v8, 0x1

    iput v13, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    const/16 v13, 0x1f

    aput v13, v5, v8

    const/16 v13, 0x5c

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2027
    :cond_85
    const/16 v13, 0x5c

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2023
    :pswitch_af
    const/16 v17, 0x2f

    and-long v23, v20, v23

    cmp-long v5, v23, v18

    if-eqz v5, :cond_86

    .line 2024
    invoke-direct {v1, v15, v6}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddStates(II)V

    const/16 v13, 0x5c

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2023
    :cond_86
    const/16 v13, 0x5c

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2019
    :pswitch_b0
    const/16 v17, 0x2f

    and-long v23, v20, v23

    cmp-long v8, v23, v18

    if-eqz v8, :cond_87

    .line 2020
    iget v8, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v13, v8, 0x1

    iput v13, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    const/16 v13, 0x23

    aput v13, v5, v8

    const/16 v13, 0x5c

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2019
    :cond_87
    const/16 v13, 0x5c

    const/16 v22, 0x22

    goto/16 :goto_6

    .line 2015
    :pswitch_b1
    const/16 v17, 0x2f

    and-long v23, v20, v23

    cmp-long v8, v23, v18

    if-eqz v8, :cond_88

    .line 2016
    iget v8, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v13, v8, 0x1

    iput v13, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    const/16 v22, 0x22

    aput v22, v5, v8

    const/16 v13, 0x5c

    goto/16 :goto_6

    .line 2015
    :cond_88
    const/16 v22, 0x22

    const/16 v13, 0x5c

    goto/16 :goto_6

    .line 2011
    :pswitch_b2
    const/16 v17, 0x2f

    const/16 v22, 0x22

    and-long v23, v20, v23

    cmp-long v8, v23, v18

    if-eqz v8, :cond_89

    .line 2012
    iget v8, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v13, v8, 0x1

    iput v13, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    const/16 v13, 0x21

    aput v13, v5, v8

    const/16 v13, 0x5c

    goto/16 :goto_6

    .line 2011
    :cond_89
    const/16 v13, 0x5c

    goto/16 :goto_6

    .line 2007
    :pswitch_b3
    const/16 v17, 0x2f

    const/16 v22, 0x22

    iget v8, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    if-ne v8, v10, :cond_8a

    .line 2008
    iget v8, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v13, v8, 0x1

    iput v13, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    const/16 v13, 0x20

    aput v13, v5, v8

    const/16 v13, 0x5c

    goto/16 :goto_6

    .line 2007
    :cond_8a
    const/16 v13, 0x5c

    goto/16 :goto_6

    .line 2003
    :pswitch_b4
    const/16 v17, 0x2f

    const/16 v22, 0x22

    const-wide v23, 0x14404410000000L

    and-long v23, v20, v23

    cmp-long v5, v23, v18

    if-eqz v5, :cond_8b

    .line 2004
    invoke-direct {v1, v15, v6}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddStates(II)V

    const/16 v13, 0x5c

    goto/16 :goto_6

    .line 2003
    :cond_8b
    const/16 v13, 0x5c

    goto/16 :goto_6

    .line 1999
    :pswitch_b5
    const/16 v17, 0x2f

    const/16 v22, 0x22

    iget v5, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    const/16 v8, 0x5c

    if-ne v5, v8, :cond_8c

    .line 2000
    const/16 v5, 0x65

    const/16 v8, 0x67

    invoke-direct {v1, v5, v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjAddStates(II)V

    const/16 v13, 0x5c

    goto/16 :goto_6

    .line 1999
    :cond_8c
    const/16 v13, 0x5c

    goto/16 :goto_6

    .line 1995
    :pswitch_b6
    const/16 v17, 0x2f

    const/16 v22, 0x22

    const-wide/32 v23, -0x10000001

    and-long v23, v20, v23

    cmp-long v5, v23, v18

    if-eqz v5, :cond_8d

    .line 1996
    invoke-direct {v1, v15, v6}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddStates(II)V

    const/16 v13, 0x5c

    goto/16 :goto_6

    .line 1995
    :cond_8d
    const/16 v13, 0x5c

    goto/16 :goto_6

    .line 1991
    :pswitch_b7
    const/16 v17, 0x2f

    const/16 v22, 0x22

    iget v8, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    const/16 v13, 0x5c

    if-ne v8, v13, :cond_8e

    .line 1992
    iget v8, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v13, v8, 0x1

    iput v13, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    const/16 v13, 0x15

    aput v13, v5, v8

    const/16 v13, 0x5c

    goto/16 :goto_6

    .line 1991
    :cond_8e
    const/16 v13, 0x5c

    goto/16 :goto_6

    .line 1987
    :pswitch_b8
    const/16 v17, 0x2f

    const/16 v22, 0x22

    and-long v23, v20, v23

    cmp-long v5, v23, v18

    if-eqz v5, :cond_8f

    .line 1988
    const/16 v5, 0xe

    invoke-direct {v1, v5}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAdd(I)V

    const/16 v13, 0x5c

    goto/16 :goto_6

    .line 1987
    :cond_8f
    const/16 v13, 0x5c

    goto/16 :goto_6

    .line 1983
    :pswitch_b9
    const/16 v17, 0x2f

    const/16 v22, 0x22

    and-long v23, v20, v23

    cmp-long v8, v23, v18

    if-eqz v8, :cond_90

    .line 1984
    iget v8, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v13, v8, 0x1

    iput v13, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    const/16 v13, 0x19

    aput v13, v5, v8

    const/16 v13, 0x5c

    goto/16 :goto_6

    .line 1983
    :cond_90
    const/16 v13, 0x5c

    goto/16 :goto_6

    .line 1979
    :pswitch_ba
    const/16 v17, 0x2f

    const/16 v22, 0x22

    and-long v23, v20, v23

    cmp-long v8, v23, v18

    if-eqz v8, :cond_91

    .line 1980
    iget v8, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v13, v8, 0x1

    iput v13, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    const/16 v13, 0x18

    aput v13, v5, v8

    const/16 v13, 0x5c

    goto/16 :goto_6

    .line 1979
    :cond_91
    const/16 v13, 0x5c

    goto/16 :goto_6

    .line 1975
    :pswitch_bb
    const/16 v17, 0x2f

    const/16 v22, 0x22

    and-long v23, v20, v23

    cmp-long v8, v23, v18

    if-eqz v8, :cond_92

    .line 1976
    iget v8, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v13, v8, 0x1

    iput v13, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    const/16 v13, 0x17

    aput v13, v5, v8

    const/16 v13, 0x5c

    goto/16 :goto_6

    .line 1975
    :cond_92
    const/16 v13, 0x5c

    goto/16 :goto_6

    .line 1971
    :pswitch_bc
    const/16 v17, 0x2f

    const/16 v22, 0x22

    iget v8, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    if-ne v8, v10, :cond_93

    .line 1972
    iget v8, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v13, v8, 0x1

    iput v13, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    const/16 v13, 0x16

    aput v13, v5, v8

    const/16 v13, 0x5c

    goto/16 :goto_6

    .line 1971
    :cond_93
    const/16 v13, 0x5c

    goto/16 :goto_6

    .line 1967
    :pswitch_bd
    const/16 v17, 0x2f

    const/16 v22, 0x22

    const-wide v23, 0x14404410000000L

    and-long v23, v20, v23

    cmp-long v5, v23, v18

    if-eqz v5, :cond_94

    .line 1968
    const/16 v5, 0xe

    invoke-direct {v1, v5}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAdd(I)V

    const/16 v13, 0x5c

    goto/16 :goto_6

    .line 1967
    :cond_94
    const/16 v13, 0x5c

    goto/16 :goto_6

    .line 1963
    :pswitch_be
    const/16 v17, 0x2f

    const/16 v22, 0x22

    iget v5, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    const/16 v8, 0x5c

    if-ne v5, v8, :cond_95

    .line 1964
    const/16 v5, 0x6e

    const/16 v8, 0x70

    invoke-direct {v1, v5, v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjAddStates(II)V

    const/16 v13, 0x5c

    goto/16 :goto_6

    .line 1963
    :cond_95
    const/16 v13, 0x5c

    goto/16 :goto_6

    .line 1959
    :pswitch_bf
    const/16 v17, 0x2f

    const/16 v22, 0x22

    const-wide/32 v23, -0x10000001

    and-long v23, v20, v23

    cmp-long v5, v23, v18

    if-eqz v5, :cond_96

    .line 1960
    const/16 v5, 0xe

    invoke-direct {v1, v5}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAdd(I)V

    const/16 v13, 0x5c

    goto/16 :goto_6

    .line 1959
    :cond_96
    const/16 v13, 0x5c

    goto/16 :goto_6

    .line 1955
    :pswitch_c0
    const/16 v17, 0x2f

    const/16 v22, 0x22

    const-wide v23, 0x5000000050L

    and-long v23, v20, v23

    cmp-long v5, v23, v18

    if-eqz v5, :cond_97

    if-le v4, v12, :cond_97

    .line 1956
    const/16 v4, 0x51

    const/16 v13, 0x5c

    goto/16 :goto_6

    .line 1955
    :cond_97
    const/16 v13, 0x5c

    goto/16 :goto_6

    .line 1951
    :pswitch_c1
    const/16 v17, 0x2f

    const/16 v22, 0x22

    iget v5, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    if-ne v5, v13, :cond_98

    .line 1952
    const/16 v5, 0x6c

    const/16 v8, 0x6d

    invoke-direct {v1, v5, v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjAddStates(II)V

    const/16 v13, 0x5c

    goto :goto_6

    .line 1951
    :cond_98
    const/16 v13, 0x5c

    goto :goto_6

    .line 1947
    :pswitch_c2
    const/16 v17, 0x2f

    const/16 v22, 0x22

    const-wide v23, 0x2000000020L

    and-long v23, v20, v23

    cmp-long v5, v23, v18

    if-eqz v5, :cond_99

    .line 1948
    const/16 v5, 0x6a

    const/16 v8, 0x6b

    invoke-direct {v1, v5, v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjAddStates(II)V

    const/16 v13, 0x5c

    goto :goto_6

    .line 1947
    :cond_99
    const/16 v13, 0x5c

    goto :goto_6

    .line 1943
    :pswitch_c3
    const/16 v17, 0x2f

    const/16 v22, 0x22

    iget v5, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    if-ne v5, v13, :cond_9a

    .line 1944
    const/16 v5, 0x68

    const/16 v8, 0x69

    invoke-direct {v1, v5, v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjAddStates(II)V

    const/16 v13, 0x5c

    goto :goto_6

    .line 1943
    :cond_9a
    const/16 v13, 0x5c

    goto :goto_6

    .line 1925
    :pswitch_c4
    const/16 v17, 0x2f

    const/16 v22, 0x22

    const-wide v23, 0x7fffffe87fffffeL

    and-long v23, v20, v23

    cmp-long v8, v23, v18

    if-eqz v8, :cond_9c

    .line 1927
    if-le v4, v7, :cond_9b

    .line 1928
    const/16 v4, 0x5d

    .line 1929
    :cond_9b
    const/16 v5, 0x31

    const/16 v8, 0x2b

    invoke-direct {v1, v8, v5}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    const/16 v13, 0x5c

    goto :goto_6

    .line 1931
    :cond_9c
    iget v8, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    const/16 v13, 0x5c

    if-ne v8, v13, :cond_9d

    .line 1932
    iget v8, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    const/16 v9, 0x32

    aput v9, v5, v8

    .line 2270
    :cond_9d
    :goto_6
    if-ne v3, v2, :cond_9e

    .line 2271
    .end local v20    # "l":J
    goto/16 :goto_a

    .line 2270
    .restart local v20    # "l":J
    :cond_9e
    const/16 v9, 0x40

    goto/16 :goto_4

    .line 2274
    .end local v20    # "l":J
    :cond_9f
    shr-int/lit8 v8, v5, 0x8

    .line 2275
    .local v8, "hiByte":I
    shr-int/lit8 v9, v8, 0x6

    .line 2276
    .local v9, "i1":I
    and-int/lit8 v10, v8, 0x3f

    const-wide/16 v11, 0x1

    shl-long v10, v11, v10

    .line 2277
    .local v10, "l1":J
    and-int/lit16 v12, v5, 0xff

    shr-int/lit8 v12, v12, 0x6

    .line 2278
    .local v12, "i2":I
    and-int/lit8 v5, v5, 0x3f

    const-wide/16 v13, 0x1

    shl-long/2addr v13, v5

    .line 2281
    .local v13, "l2":J
    :goto_7
    iget-object v5, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjstateSet:[I

    add-int/lit8 v3, v3, -0x1

    aget v5, v5, v3

    sparse-switch v5, :sswitch_data_0

    .line 2331
    const/16 v5, 0x2b

    const/16 v6, 0xe

    const/16 v15, 0x31

    if-eqz v9, :cond_ad

    cmp-long v16, v10, v18

    if-eqz v16, :cond_ad

    goto/16 :goto_9

    .line 2328
    :sswitch_0
    move/from16 v24, v8

    move/from16 v25, v9

    move/from16 v26, v12

    move-wide/from16 v27, v10

    move-wide/from16 v29, v13

    invoke-static/range {v24 .. v30}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCanMove_1(IIIJJ)Z

    move-result v5

    if-eqz v5, :cond_a0

    const/4 v5, 0x6

    if-le v4, v5, :cond_a0

    .line 2329
    const/4 v4, 0x6

    const/16 v5, 0x2b

    const/16 v6, 0xe

    const/16 v15, 0x31

    goto/16 :goto_9

    .line 2328
    :cond_a0
    const/16 v5, 0x2b

    const/16 v6, 0xe

    const/16 v15, 0x31

    goto/16 :goto_9

    .line 2321
    :sswitch_1
    move/from16 v24, v8

    move/from16 v25, v9

    move/from16 v26, v12

    move-wide/from16 v27, v10

    move-wide/from16 v29, v13

    invoke-static/range {v24 .. v30}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCanMove_1(IIIJJ)Z

    move-result v5

    if-nez v5, :cond_a1

    .line 2322
    const/16 v5, 0x2b

    const/16 v6, 0xe

    const/16 v15, 0x31

    goto/16 :goto_9

    .line 2323
    :cond_a1
    const/4 v5, 0x5

    if-le v4, v5, :cond_a2

    .line 2324
    const/4 v4, 0x5

    .line 2325
    :cond_a2
    iget-object v5, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjstateSet:[I

    iget v6, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v15, v6, 0x1

    iput v15, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    const/16 v15, 0x39

    aput v15, v5, v6

    .line 2326
    const/16 v5, 0x2b

    const/16 v6, 0xe

    const/16 v15, 0x31

    goto/16 :goto_9

    .line 2285
    :sswitch_2
    move/from16 v24, v8

    move/from16 v25, v9

    move/from16 v26, v12

    move-wide/from16 v27, v10

    move-wide/from16 v29, v13

    invoke-static/range {v24 .. v30}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCanMove_3(IIIJJ)Z

    move-result v5

    if-nez v5, :cond_a3

    .line 2286
    const/16 v5, 0x2b

    const/16 v6, 0xe

    const/16 v15, 0x31

    goto/16 :goto_9

    .line 2287
    :cond_a3
    if-le v4, v7, :cond_a4

    .line 2288
    const/16 v4, 0x5d

    .line 2289
    :cond_a4
    const/16 v5, 0x31

    const/16 v6, 0x2b

    invoke-direct {v1, v6, v5}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    .line 2290
    const/16 v5, 0x2b

    const/16 v6, 0xe

    const/16 v15, 0x31

    goto/16 :goto_9

    .line 2314
    :sswitch_3
    move/from16 v24, v8

    move/from16 v25, v9

    move/from16 v26, v12

    move-wide/from16 v27, v10

    move-wide/from16 v29, v13

    invoke-static/range {v24 .. v30}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCanMove_2(IIIJJ)Z

    move-result v5

    if-nez v5, :cond_a5

    .line 2315
    const/16 v5, 0x2b

    const/16 v6, 0xe

    const/16 v15, 0x31

    goto/16 :goto_9

    .line 2316
    :cond_a5
    if-le v4, v7, :cond_a6

    .line 2317
    const/16 v4, 0x5d

    .line 2318
    :cond_a6
    const/16 v5, 0x31

    const/16 v6, 0x2b

    invoke-direct {v1, v6, v5}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    .line 2319
    const/16 v5, 0x2b

    const/16 v6, 0xe

    const/16 v15, 0x31

    goto/16 :goto_9

    .line 2306
    :sswitch_4
    move/from16 v24, v8

    move/from16 v25, v9

    move/from16 v26, v12

    move-wide/from16 v27, v10

    move-wide/from16 v29, v13

    invoke-static/range {v24 .. v30}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCanMove_1(IIIJJ)Z

    move-result v5

    if-eqz v5, :cond_a7

    .line 2307
    const/16 v5, 0x11

    const/16 v6, 0x14

    invoke-direct {v1, v5, v6}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddStates(II)V

    const/16 v5, 0x2b

    const/16 v6, 0xe

    const/16 v15, 0x31

    goto/16 :goto_9

    .line 2306
    :cond_a7
    const/16 v5, 0x11

    const/16 v6, 0x14

    const/16 v5, 0x2b

    const/16 v6, 0xe

    const/16 v15, 0x31

    goto/16 :goto_9

    .line 2310
    :sswitch_5
    move v5, v15

    move/from16 v24, v8

    move/from16 v25, v9

    move/from16 v26, v12

    move-wide/from16 v27, v10

    move-wide/from16 v29, v13

    invoke-static/range {v24 .. v30}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCanMove_1(IIIJJ)Z

    move-result v15

    if-eqz v15, :cond_a8

    .line 2311
    iget-object v15, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjstateSet:[I

    iget v5, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    const/16 v6, 0xe

    aput v6, v15, v5

    const/16 v5, 0x2b

    const/16 v15, 0x31

    goto :goto_9

    .line 2310
    :cond_a8
    const/16 v6, 0xe

    const/16 v5, 0x2b

    const/16 v15, 0x31

    goto :goto_9

    .line 2292
    :sswitch_6
    const/16 v6, 0xe

    move/from16 v24, v8

    move/from16 v25, v9

    move/from16 v26, v12

    move-wide/from16 v27, v10

    move-wide/from16 v29, v13

    invoke-static/range {v24 .. v30}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCanMove_0(IIIJJ)Z

    move-result v5

    if-eqz v5, :cond_a9

    .line 2294
    const/4 v5, 0x1

    if-le v4, v5, :cond_aa

    .line 2295
    const/4 v4, 0x1

    goto :goto_8

    .line 2292
    :cond_a9
    const/4 v5, 0x1

    .line 2297
    :cond_aa
    :goto_8
    move/from16 v24, v8

    move/from16 v25, v9

    move/from16 v26, v12

    move-wide/from16 v27, v10

    move-wide/from16 v29, v13

    invoke-static/range {v24 .. v30}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCanMove_2(IIIJJ)Z

    move-result v15

    if-eqz v15, :cond_ac

    .line 2299
    if-le v4, v7, :cond_ab

    .line 2300
    const/16 v4, 0x5d

    .line 2301
    :cond_ab
    const/16 v5, 0x2b

    const/16 v15, 0x31

    invoke-direct {v1, v5, v15}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto :goto_9

    .line 2297
    :cond_ac
    const/16 v5, 0x2b

    const/16 v15, 0x31

    .line 2333
    :cond_ad
    :goto_9
    if-ne v3, v2, :cond_b0

    .line 2335
    .end local v8    # "hiByte":I
    .end local v9    # "i1":I
    .end local v10    # "l1":J
    .end local v12    # "i2":I
    .end local v13    # "l2":J
    :goto_a
    const v5, 0x7fffffff

    if-eq v4, v5, :cond_ae

    .line 2337
    iput v4, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    .line 2338
    iput v0, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedPos:I

    .line 2339
    const v4, 0x7fffffff

    .line 2341
    :cond_ae
    add-int/lit8 v5, v0, 0x1

    .line 2342
    .end local v0    # "curPos":I
    .local v5, "curPos":I
    iget v0, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    move v3, v0

    iput v2, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    rsub-int v6, v2, 0x8d

    move v2, v6

    if-ne v0, v6, :cond_af

    .line 2343
    return v5

    .line 2344
    :cond_af
    :try_start_0
    iget-object v0, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->input_stream:Lorg/checkerframework/com/github/javaparser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->readChar()C

    move-result v0

    iput v0, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2345
    move v0, v5

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    return v5

    .line 2333
    .end local v5    # "curPos":I
    .local v0, "curPos":I
    .restart local v8    # "hiByte":I
    .restart local v9    # "i1":I
    .restart local v10    # "l1":J
    .restart local v12    # "i2":I
    .restart local v13    # "l2":J
    :cond_b0
    const/16 v6, 0x14

    const/16 v15, 0x11

    goto/16 :goto_7

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_0
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_0
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_0
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_0
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_0
        :pswitch_5c
        :pswitch_5b
        :pswitch_0
        :pswitch_5a
        :pswitch_0
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_0
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_0
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_0
        :pswitch_0
        :pswitch_4a
        :pswitch_49
        :pswitch_4c
        :pswitch_0
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_0
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_0
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_0
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_0
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_0
        :pswitch_23
        :pswitch_22
        :pswitch_40
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_0
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_0
        :pswitch_1b
        :pswitch_1a
        :pswitch_3e
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_9
        :pswitch_4f
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_c4
        :pswitch_73
        :pswitch_73
        :pswitch_c3
        :pswitch_73
        :pswitch_c2
        :pswitch_73
        :pswitch_73
        :pswitch_c1
        :pswitch_73
        :pswitch_c0
        :pswitch_73
        :pswitch_73
        :pswitch_bf
        :pswitch_73
        :pswitch_be
        :pswitch_bd
        :pswitch_73
        :pswitch_73
        :pswitch_73
        :pswitch_73
        :pswitch_bc
        :pswitch_bb
        :pswitch_ba
        :pswitch_b9
        :pswitch_b8
        :pswitch_b7
        :pswitch_73
        :pswitch_b6
        :pswitch_b5
        :pswitch_b4
        :pswitch_b3
        :pswitch_b2
        :pswitch_b1
        :pswitch_b0
        :pswitch_af
        :pswitch_ae
        :pswitch_73
        :pswitch_73
        :pswitch_73
        :pswitch_73
        :pswitch_73
        :pswitch_ad
        :pswitch_ac
        :pswitch_ab
        :pswitch_aa
        :pswitch_a9
        :pswitch_a8
        :pswitch_a7
        :pswitch_a6
        :pswitch_a5
        :pswitch_a4
        :pswitch_a3
        :pswitch_a8
        :pswitch_a2
        :pswitch_73
        :pswitch_73
        :pswitch_a1
        :pswitch_73
        :pswitch_a0
        :pswitch_73
        :pswitch_73
        :pswitch_9f
        :pswitch_73
        :pswitch_9e
        :pswitch_9d
        :pswitch_73
        :pswitch_9c
        :pswitch_73
        :pswitch_9b
        :pswitch_73
        :pswitch_73
        :pswitch_9a
        :pswitch_73
        :pswitch_73
        :pswitch_99
        :pswitch_73
        :pswitch_98
        :pswitch_73
        :pswitch_73
        :pswitch_97
        :pswitch_73
        :pswitch_73
        :pswitch_96
        :pswitch_73
        :pswitch_73
        :pswitch_73
        :pswitch_95
        :pswitch_73
        :pswitch_94
        :pswitch_73
        :pswitch_73
        :pswitch_93
        :pswitch_73
        :pswitch_73
        :pswitch_73
        :pswitch_92
        :pswitch_91
        :pswitch_90
        :pswitch_8f
        :pswitch_73
        :pswitch_8e
        :pswitch_73
        :pswitch_8d
        :pswitch_73
        :pswitch_8c
        :pswitch_73
        :pswitch_8b
        :pswitch_8a
        :pswitch_89
        :pswitch_88
        :pswitch_73
        :pswitch_87
        :pswitch_73
        :pswitch_86
        :pswitch_73
        :pswitch_85
        :pswitch_73
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_73
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_73
        :pswitch_73
        :pswitch_7c
        :pswitch_73
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_73
        :pswitch_77
        :pswitch_73
        :pswitch_73
        :pswitch_76
        :pswitch_73
        :pswitch_75
        :pswitch_74
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_6
        0xd -> :sswitch_5
        0x1c -> :sswitch_4
        0x2a -> :sswitch_3
        0x2b -> :sswitch_2
        0x39 -> :sswitch_1
        0x3b -> :sswitch_0
        0x8d -> :sswitch_2
        0x8e -> :sswitch_4
    .end sparse-switch
.end method

.method private jjMoveNfa_3(II)I
    .locals 22
    .param p1, "startState"    # I
    .param p2, "curPos"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "startState",
            "curPos"
        }
    .end annotation

    .line 2446
    move-object/from16 v1, p0

    const/4 v0, 0x0

    .line 2447
    .local v0, "startsAt":I
    const/4 v2, 0x3

    iput v2, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    .line 2448
    const/4 v2, 0x1

    .line 2449
    .local v2, "i":I
    iget-object v3, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjstateSet:[I

    const/4 v4, 0x0

    aput p1, v3, v4

    .line 2450
    const v3, 0x7fffffff

    move v4, v3

    move v3, v2

    move v2, v0

    move/from16 v0, p2

    .line 2453
    .end local p2    # "curPos":I
    .local v0, "curPos":I
    .local v2, "startsAt":I
    .local v3, "i":I
    .local v4, "kind":I
    :goto_0
    iget v5, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjround:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    iput v5, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjround:I

    const v7, 0x7fffffff

    if-ne v5, v7, :cond_0

    .line 2454
    invoke-direct/range {p0 .. p0}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->ReInitRounds()V

    .line 2455
    :cond_0
    iget v5, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    const/16 v8, 0x40

    const-wide/16 v9, 0x1

    const/16 v11, 0x5c

    if-ge v5, v8, :cond_3

    .line 2457
    shl-long v12, v9, v5

    .line 2460
    .local v12, "l":J
    :cond_1
    iget-object v5, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjstateSet:[I

    add-int/lit8 v3, v3, -0x1

    aget v5, v5, v3

    packed-switch v5, :pswitch_data_0

    goto :goto_1

    .line 2467
    :pswitch_0
    iget v5, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    const/16 v6, 0x22

    if-ne v5, v6, :cond_2

    if-le v4, v11, :cond_2

    .line 2468
    const/16 v4, 0x5c

    goto :goto_1

    .line 2463
    :pswitch_1
    if-le v4, v11, :cond_2

    .line 2464
    const/16 v4, 0x5c

    .line 2472
    :cond_2
    :goto_1
    if-ne v3, v2, :cond_1

    .line 2473
    .end local v12    # "l":J
    goto :goto_4

    .line 2474
    :cond_3
    const/16 v8, 0x80

    if-ge v5, v8, :cond_7

    .line 2476
    and-int/lit8 v5, v5, 0x3f

    shl-long v12, v9, v5

    .line 2479
    .restart local v12    # "l":J
    :cond_4
    iget-object v5, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjstateSet:[I

    add-int/lit8 v3, v3, -0x1

    aget v8, v5, v3

    packed-switch v8, :pswitch_data_1

    :pswitch_2
    goto :goto_2

    .line 2488
    :pswitch_3
    if-le v4, v11, :cond_6

    .line 2489
    const/16 v4, 0x5c

    goto :goto_2

    .line 2482
    :pswitch_4
    if-le v4, v11, :cond_5

    .line 2483
    const/16 v4, 0x5c

    .line 2484
    :cond_5
    iget v8, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    if-ne v8, v11, :cond_6

    .line 2485
    iget v8, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    aput v6, v5, v8

    .line 2493
    :cond_6
    :goto_2
    if-ne v3, v2, :cond_4

    .line 2494
    .end local v12    # "l":J
    goto :goto_4

    .line 2497
    :cond_7
    shr-int/lit8 v6, v5, 0x8

    .line 2498
    .local v6, "hiByte":I
    shr-int/lit8 v8, v6, 0x6

    .line 2499
    .local v8, "i1":I
    and-int/lit8 v12, v6, 0x3f

    shl-long v12, v9, v12

    .line 2500
    .local v12, "l1":J
    and-int/lit16 v14, v5, 0xff

    shr-int/lit8 v21, v14, 0x6

    .line 2501
    .local v21, "i2":I
    and-int/lit8 v5, v5, 0x3f

    shl-long/2addr v9, v5

    .line 2504
    .local v9, "l2":J
    :cond_8
    iget-object v5, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjstateSet:[I

    add-int/lit8 v3, v3, -0x1

    aget v5, v5, v3

    packed-switch v5, :pswitch_data_2

    .line 2510
    if-eqz v8, :cond_9

    const-wide/16 v14, 0x0

    cmp-long v5, v12, v14

    if-eqz v5, :cond_9

    goto :goto_3

    .line 2507
    :pswitch_5
    move v14, v6

    move v15, v8

    move/from16 v16, v21

    move-wide/from16 v17, v12

    move-wide/from16 v19, v9

    invoke-static/range {v14 .. v20}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjCanMove_1(IIIJJ)Z

    move-result v5

    if-eqz v5, :cond_9

    if-le v4, v11, :cond_9

    .line 2508
    const/16 v4, 0x5c

    .line 2512
    :cond_9
    :goto_3
    if-ne v3, v2, :cond_8

    .line 2514
    .end local v6    # "hiByte":I
    .end local v8    # "i1":I
    .end local v9    # "l2":J
    .end local v12    # "l1":J
    .end local v21    # "i2":I
    :goto_4
    if-eq v4, v7, :cond_a

    .line 2516
    iput v4, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    .line 2517
    iput v0, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedPos:I

    .line 2518
    const v4, 0x7fffffff

    .line 2520
    :cond_a
    add-int/lit8 v5, v0, 0x1

    .line 2521
    .end local v0    # "curPos":I
    .local v5, "curPos":I
    iget v0, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    move v3, v0

    iput v2, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v6, v2, 0x3

    move v2, v6

    if-ne v0, v6, :cond_b

    .line 2522
    return v5

    .line 2523
    :cond_b
    :try_start_0
    iget-object v0, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->input_stream:Lorg/checkerframework/com/github/javaparser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->readChar()C

    move-result v0

    iput v0, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2524
    move v0, v5

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    return v5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch
.end method

.method private jjMoveStringLiteralDfa0_0()I
    .locals 8

    .line 276
    iget v0, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    .line 392
    invoke-direct {p0, v1, v1}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveNfa_0(II)I

    move-result v0

    return v0

    .line 390
    :sswitch_0
    const/16 v0, 0x6d

    invoke-direct {p0, v1, v0}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    .line 388
    :sswitch_1
    const/16 v0, 0x63

    invoke-direct {p0, v1, v0}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    .line 385
    :sswitch_2
    const/16 v0, 0x7d

    iput v0, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    .line 386
    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x10000000000000L

    const-wide/16 v6, 0x40

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    return v0

    .line 383
    :sswitch_3
    const/16 v0, 0x62

    invoke-direct {p0, v1, v0}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    .line 381
    :sswitch_4
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    return v0

    .line 379
    :sswitch_5
    const-wide/high16 v2, -0x8000000000000000L

    const-wide/16 v4, 0x8

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    return v0

    .line 377
    :sswitch_6
    const-wide/high16 v2, 0x6000000000000000L    # 2.6815615859885194E154

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    return v0

    .line 375
    :sswitch_7
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x40

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    return v0

    .line 373
    :sswitch_8
    const-wide/high16 v2, 0x1f80000000000000L

    const-wide/16 v4, 0x404

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    return v0

    .line 371
    :sswitch_9
    const-wide/high16 v2, 0x7e000000000000L

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    return v0

    .line 369
    :sswitch_a
    const-wide/high16 v2, 0x1000000000000L

    const-wide/16 v4, 0x2

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    return v0

    .line 367
    :sswitch_b
    const-wide v2, 0xf00000000000L

    const-wide/16 v4, 0x200

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    return v0

    .line 365
    :sswitch_c
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x30

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    return v0

    .line 363
    :sswitch_d
    const-wide v2, 0xe0000000000L

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    return v0

    .line 361
    :sswitch_e
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x80

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    return v0

    .line 359
    :sswitch_f
    const-wide v2, 0x10000000000L

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    return v0

    .line 357
    :sswitch_10
    const-wide v2, 0xfc00000000L

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    return v0

    .line 355
    :sswitch_11
    const-wide v2, 0x200000000L

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    return v0

    .line 353
    :sswitch_12
    const-wide v2, 0x1f0000000L

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    return v0

    .line 351
    :sswitch_13
    const-wide/32 v2, 0xe000000

    const-wide/16 v4, 0x100

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    return v0

    .line 349
    :sswitch_14
    const-wide/32 v2, 0x1c00000

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    return v0

    .line 347
    :sswitch_15
    const-wide/32 v2, 0x3f0000

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    return v0

    .line 345
    :sswitch_16
    const-wide/32 v2, 0xe000

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    return v0

    .line 343
    :sswitch_17
    const-wide/16 v2, 0x1800

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    return v0

    .line 340
    :sswitch_18
    const/16 v0, 0x7e

    iput v0, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    .line 341
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x80

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    return v0

    .line 338
    :sswitch_19
    const/16 v0, 0x65

    invoke-direct {p0, v1, v0}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    .line 336
    :sswitch_1a
    const/16 v0, 0x64

    invoke-direct {p0, v1, v0}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    .line 334
    :sswitch_1b
    const/16 v0, 0x69

    invoke-direct {p0, v1, v0}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    .line 332
    :sswitch_1c
    const/16 v0, 0x6e

    invoke-direct {p0, v1, v0}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    .line 329
    :sswitch_1d
    const/16 v0, 0x91

    iput v0, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    .line 330
    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x4000000000000L

    const-wide/32 v6, 0x18c00

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    return v0

    .line 326
    :sswitch_1e
    const/16 v0, 0x6a

    iput v0, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    .line 327
    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x1000000000000L

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    return v0

    .line 323
    :sswitch_1f
    const/16 v0, 0x6b

    iput v0, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    .line 324
    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x2000000000000L

    const-wide/16 v6, 0x201

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    return v0

    .line 321
    :sswitch_20
    const/16 v0, 0x66

    invoke-direct {p0, v1, v0}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    .line 318
    :sswitch_21
    const/16 v0, 0x6f

    iput v0, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    .line 319
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x4000

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    return v0

    .line 315
    :sswitch_22
    const/16 v0, 0x7b

    iput v0, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    .line 316
    const-wide/16 v2, 0x80

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x10

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    return v0

    .line 312
    :sswitch_23
    const/16 v0, 0x68

    iput v0, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    .line 313
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x1000

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    return v0

    .line 309
    :sswitch_24
    const/16 v0, 0x79

    iput v0, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    .line 310
    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x80000000000000L

    const-wide/16 v6, 0x2004

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    return v0

    .line 307
    :sswitch_25
    const/16 v0, 0x67

    invoke-direct {p0, v1, v0}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    .line 304
    :sswitch_26
    const/16 v0, 0x78

    iput v0, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    .line 305
    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x40000000000000L

    const-wide/16 v6, 0x2

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    return v0

    .line 301
    :sswitch_27
    const/16 v0, 0x7a

    iput v0, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    .line 302
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x8

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    return v0

    .line 299
    :sswitch_28
    const/16 v0, 0x61

    invoke-direct {p0, v1, v0}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    .line 297
    :sswitch_29
    const/16 v0, 0x60

    invoke-direct {p0, v1, v0}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    .line 294
    :sswitch_2a
    const/16 v0, 0x7c

    iput v0, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    .line 295
    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x20000000000000L

    const-wide/16 v6, 0x20

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    return v0

    .line 291
    :sswitch_2b
    const/16 v0, 0x7f

    iput v0, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    .line 292
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x100

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    return v0

    .line 289
    :sswitch_2c
    const-wide/16 v2, 0x0

    const-wide/32 v4, 0x4000000

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    return v0

    .line 286
    :sswitch_2d
    const/16 v0, 0x6c

    iput v0, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    .line 287
    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x8000000000000L

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    return v0

    .line 284
    :sswitch_2e
    const/16 v0, 0x92

    invoke-direct {p0, v1, v0}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    .line 281
    :sswitch_2f
    const/4 v0, 0x4

    iput v0, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    .line 282
    const-wide/16 v2, 0x4

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    return v0

    .line 279
    :sswitch_30
    const/4 v0, 0x3

    invoke-direct {p0, v1, v0}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_30
        0xd -> :sswitch_2f
        0x1a -> :sswitch_2e
        0x21 -> :sswitch_2d
        0x22 -> :sswitch_2c
        0x25 -> :sswitch_2b
        0x26 -> :sswitch_2a
        0x28 -> :sswitch_29
        0x29 -> :sswitch_28
        0x2a -> :sswitch_27
        0x2b -> :sswitch_26
        0x2c -> :sswitch_25
        0x2d -> :sswitch_24
        0x2e -> :sswitch_23
        0x2f -> :sswitch_22
        0x3a -> :sswitch_21
        0x3b -> :sswitch_20
        0x3c -> :sswitch_1f
        0x3d -> :sswitch_1e
        0x3e -> :sswitch_1d
        0x3f -> :sswitch_1c
        0x40 -> :sswitch_1b
        0x5b -> :sswitch_1a
        0x5d -> :sswitch_19
        0x5e -> :sswitch_18
        0x61 -> :sswitch_17
        0x62 -> :sswitch_16
        0x63 -> :sswitch_15
        0x64 -> :sswitch_14
        0x65 -> :sswitch_13
        0x66 -> :sswitch_12
        0x67 -> :sswitch_11
        0x69 -> :sswitch_10
        0x6c -> :sswitch_f
        0x6d -> :sswitch_e
        0x6e -> :sswitch_d
        0x6f -> :sswitch_c
        0x70 -> :sswitch_b
        0x72 -> :sswitch_a
        0x73 -> :sswitch_9
        0x74 -> :sswitch_8
        0x75 -> :sswitch_7
        0x76 -> :sswitch_6
        0x77 -> :sswitch_5
        0x79 -> :sswitch_4
        0x7b -> :sswitch_3
        0x7c -> :sswitch_2
        0x7d -> :sswitch_1
        0x7e -> :sswitch_0
    .end sparse-switch
.end method

.method private jjMoveStringLiteralDfa0_1()I
    .locals 2

    .line 2528
    iget v0, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    packed-switch v0, :pswitch_data_0

    .line 2533
    const/4 v0, 0x1

    return v0

    .line 2531
    :pswitch_0
    const-wide/16 v0, 0x100

    invoke-direct {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa1_1(J)I

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x2a
        :pswitch_0
    .end packed-switch
.end method

.method private jjMoveStringLiteralDfa0_2()I
    .locals 2

    .line 2349
    iget v0, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    packed-switch v0, :pswitch_data_0

    .line 2354
    const/4 v0, 0x1

    return v0

    .line 2352
    :pswitch_0
    const-wide/16 v0, 0x200

    invoke-direct {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa1_2(J)I

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x2a
        :pswitch_0
    .end packed-switch
.end method

.method private jjMoveStringLiteralDfa0_3()I
    .locals 2

    .line 2402
    iget v0, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    packed-switch v0, :pswitch_data_0

    .line 2407
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveNfa_3(II)I

    move-result v0

    return v0

    .line 2405
    :pswitch_0
    const-wide/32 v0, 0x8000000

    invoke-direct {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa1_3(J)I

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_0
    .end packed-switch
.end method

.method private jjMoveStringLiteralDfa10_0(JJJJ)I
    .locals 14
    .param p1, "old0"    # J
    .param p3, "active0"    # J
    .param p5, "old1"    # J
    .param p7, "active1"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "old0",
            "active0",
            "old1",
            "active1"
        }
    .end annotation

    .line 991
    move-object v9, p0

    and-long v0, p3, p1

    move-wide v10, v0

    .end local p3    # "active0":J
    .local v10, "active0":J
    and-long v2, p7, p5

    move-wide v12, v2

    .end local p7    # "active1":J
    .local v12, "active1":J
    or-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 992
    const/16 v2, 0x8

    const-wide/16 v7, 0x0

    move-object v1, p0

    move-wide v3, p1

    move-wide/from16 v5, p5

    invoke-direct/range {v1 .. v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    .line 993
    :cond_0
    :try_start_0
    iget-object v0, v9, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->input_stream:Lorg/checkerframework/com/github/javaparser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->readChar()C

    move-result v0

    iput v0, v9, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 997
    nop

    .line 998
    packed-switch v0, :pswitch_data_0

    .line 1005
    const/16 v2, 0x9

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    move-object v1, p0

    move-wide v3, v10

    invoke-direct/range {v1 .. v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    .line 1001
    :pswitch_0
    const-wide/high16 v0, 0x40000000000000L

    invoke-direct {p0, v10, v11, v0, v1}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa11_0(JJ)I

    move-result v0

    return v0

    .line 994
    :catch_0
    move-exception v0

    .line 995
    .local v0, "e":Ljava/io/IOException;
    const/16 v2, 0x9

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    move-object v1, p0

    move-wide v3, v10

    invoke-direct/range {v1 .. v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    .line 996
    const/16 v1, 0xa

    return v1

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method

.method private jjMoveStringLiteralDfa11_0(JJ)I
    .locals 13
    .param p1, "old0"    # J
    .param p3, "active0"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "old0",
            "active0"
        }
    .end annotation

    .line 1008
    move-object v9, p0

    and-long v0, p3, p1

    move-wide v10, v0

    .end local p3    # "active0":J
    .local v10, "active0":J
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1009
    const/16 v2, 0x9

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    move-object v1, p0

    move-wide v3, p1

    invoke-direct/range {v1 .. v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    .line 1010
    :cond_0
    const/16 v12, 0xb

    :try_start_0
    iget-object v0, v9, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->input_stream:Lorg/checkerframework/com/github/javaparser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->readChar()C

    move-result v0

    iput v0, v9, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1014
    nop

    .line 1015
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1018
    :pswitch_0
    const-wide/high16 v0, 0x40000000000000L

    and-long/2addr v0, v10

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 1019
    const/16 v0, 0x36

    const/16 v1, 0x8d

    invoke-direct {p0, v12, v0, v1}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 1024
    :cond_1
    :goto_0
    const/16 v2, 0xa

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    move-object v1, p0

    move-wide v3, v10

    invoke-direct/range {v1 .. v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    .line 1011
    :catch_0
    move-exception v0

    .line 1012
    .local v0, "e":Ljava/io/IOException;
    const/16 v2, 0xa

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    move-object v1, p0

    move-wide v3, v10

    invoke-direct/range {v1 .. v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    .line 1013
    return v12

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method private jjMoveStringLiteralDfa1_0(JJJ)I
    .locals 15
    .param p1, "active0"    # J
    .param p3, "active1"    # J
    .param p5, "active2"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "active0",
            "active1",
            "active2"
        }
    .end annotation

    .line 396
    move-object v14, p0

    const/4 v9, 0x1

    :try_start_0
    iget-object v0, v14, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->input_stream:Lorg/checkerframework/com/github/javaparser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->readChar()C

    move-result v0

    iput v0, v14, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    nop

    .line 401
    const-wide/16 v1, 0x80

    const/16 v3, 0x8d

    const-wide/16 v4, 0x4

    const-wide/16 v6, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_1

    .line 519
    :sswitch_0
    const-wide/high16 v0, 0x10000000000000L

    and-long v0, p3, v0

    cmp-long v0, v0, v6

    if-eqz v0, :cond_10

    .line 520
    const/16 v0, 0x74

    invoke-direct {p0, v9, v0}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    .line 517
    :sswitch_1
    const-wide v4, 0x40000000008000L

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v6, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v1 .. v13}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJJJ)I

    move-result v0

    return v0

    .line 515
    :sswitch_2
    const-wide/32 v4, 0x8000000

    const-wide/16 v8, 0x100

    const-wide/16 v12, 0x0

    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v6, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v1 .. v13}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJJJ)I

    move-result v0

    return v0

    .line 513
    :sswitch_3
    const-wide/high16 v4, 0x20000000000000L

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v6, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v1 .. v13}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJJJ)I

    move-result v0

    return v0

    .line 511
    :sswitch_4
    const-wide v4, 0x10880000000000L

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v6, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v1 .. v13}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJJJ)I

    move-result v0

    return v0

    .line 509
    :sswitch_5
    const-wide/high16 v4, 0xc000000000000L

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v6, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v1 .. v13}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJJJ)I

    move-result v0

    return v0

    .line 507
    :sswitch_6
    const-wide/16 v4, 0x1000

    const-wide/16 v8, 0x40

    const-wide/16 v12, 0x0

    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v6, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v1 .. v13}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJJJ)I

    move-result v0

    return v0

    .line 505
    :sswitch_7
    const-wide v4, 0x1c00600000004000L    # 8.275873033869067E-174

    const-wide/16 v8, 0x600

    const-wide/16 v12, 0x0

    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v6, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v1 .. v13}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJJJ)I

    move-result v0

    return v0

    .line 503
    :sswitch_8
    const-wide/16 v4, 0x0

    const-wide/16 v8, 0x30

    const-wide/16 v12, 0x0

    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v6, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v1 .. v13}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJJJ)I

    move-result v0

    return v0

    .line 494
    :sswitch_9
    const-wide/32 v0, 0x800000

    and-long v0, p1, v0

    cmp-long v0, v0, v6

    if-eqz v0, :cond_0

    .line 496
    const/16 v0, 0x17

    iput v0, v14, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    .line 497
    iput v9, v14, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedPos:I

    goto :goto_0

    .line 499
    :cond_0
    and-long v0, p3, v4

    cmp-long v0, v0, v6

    if-eqz v0, :cond_1

    .line 500
    const/16 v0, 0x42

    invoke-direct {p0, v9, v0, v3}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 501
    :cond_1
    :goto_0
    const-wide v4, 0x6000010301302000L    # 2.682223947986858E154

    const-wide/16 v8, 0x80

    const-wide/16 v12, 0x0

    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v6, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v1 .. v13}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJJJ)I

    move-result v0

    return v0

    .line 492
    :sswitch_a
    const-wide v4, 0xe004000000L

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v6, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v1 .. v13}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJJJ)I

    move-result v0

    return v0

    .line 490
    :sswitch_b
    const-wide v4, 0x1800000000L

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v6, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v1 .. v13}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJJJ)I

    move-result v0

    return v0

    .line 488
    :sswitch_c
    const-wide v4, 0x82080000L

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v6, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v1 .. v13}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJJJ)I

    move-result v0

    return v0

    .line 486
    :sswitch_d
    const-wide/32 v4, 0x60000000

    const-wide/16 v8, 0x9

    const-wide/16 v12, 0x0

    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v6, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v1 .. v13}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJJJ)I

    move-result v0

    return v0

    .line 484
    :sswitch_e
    const-wide v4, -0x7c7dfffffffc0000L    # -9.01875762050701E-292

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v6, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v1 .. v13}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJJJ)I

    move-result v0

    return v0

    .line 480
    :sswitch_f
    const-wide v0, 0x400000000L

    and-long v0, p1, v0

    cmp-long v0, v0, v6

    if-eqz v0, :cond_10

    .line 481
    const/16 v0, 0x22

    invoke-direct {p0, v9, v0, v3}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 478
    :sswitch_10
    const-wide v4, 0x1040000400000L

    const-wide/16 v8, 0x2

    const-wide/16 v12, 0x0

    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v6, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v1 .. v13}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJJJ)I

    move-result v0

    return v0

    .line 476
    :sswitch_11
    const-wide/16 v4, 0x800

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v6, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v1 .. v13}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJJJ)I

    move-result v0

    return v0

    .line 474
    :sswitch_12
    const-wide v4, 0x120010030000L

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v6, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v1 .. v13}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJJJ)I

    move-result v0

    return v0

    .line 465
    :sswitch_13
    const-wide/16 v0, 0x2000

    and-long v0, p5, v0

    cmp-long v0, v0, v6

    if-eqz v0, :cond_2

    .line 466
    invoke-direct {p0, v9, v3}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    .line 467
    :cond_2
    const-wide/32 v0, 0x10000

    and-long v0, p5, v0

    cmp-long v0, v0, v6

    if-eqz v0, :cond_3

    .line 469
    const/16 v0, 0x90

    iput v0, v14, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    .line 470
    iput v9, v14, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedPos:I

    .line 472
    :cond_3
    const-wide/16 v4, 0x0

    const-wide/16 v8, 0x0

    const-wide/32 v12, 0x8c00

    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v6, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v1 .. v13}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJJJ)I

    move-result v0

    return v0

    .line 439
    :sswitch_14
    const-wide/high16 v10, 0x1000000000000L

    and-long v10, p3, v10

    cmp-long v0, v10, v6

    if-eqz v0, :cond_4

    .line 440
    const/16 v0, 0x70

    invoke-direct {p0, v9, v0}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    .line 441
    :cond_4
    const-wide/high16 v10, 0x2000000000000L

    and-long v10, p3, v10

    cmp-long v0, v10, v6

    if-eqz v0, :cond_5

    .line 442
    const/16 v0, 0x71

    invoke-direct {p0, v9, v0}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    .line 443
    :cond_5
    const-wide/high16 v10, 0x4000000000000L

    and-long v10, p3, v10

    cmp-long v0, v10, v6

    if-eqz v0, :cond_6

    .line 444
    const/16 v0, 0x72

    invoke-direct {p0, v9, v0}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    .line 445
    :cond_6
    const-wide/high16 v10, 0x8000000000000L

    and-long v10, p3, v10

    cmp-long v0, v10, v6

    if-eqz v0, :cond_7

    .line 446
    const/16 v0, 0x73

    invoke-direct {p0, v9, v0}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    .line 447
    :cond_7
    const-wide/16 v10, 0x2

    and-long v10, p5, v10

    cmp-long v0, v10, v6

    if-eqz v0, :cond_8

    .line 448
    const/16 v0, 0x81

    invoke-direct {p0, v9, v0}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    .line 449
    :cond_8
    and-long v3, p5, v4

    cmp-long v0, v3, v6

    if-eqz v0, :cond_9

    .line 450
    const/16 v0, 0x82

    invoke-direct {p0, v9, v0}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    .line 451
    :cond_9
    const-wide/16 v3, 0x8

    and-long v3, p5, v3

    cmp-long v0, v3, v6

    if-eqz v0, :cond_a

    .line 452
    const/16 v0, 0x83

    invoke-direct {p0, v9, v0}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    .line 453
    :cond_a
    const-wide/16 v3, 0x10

    and-long v3, p5, v3

    cmp-long v0, v3, v6

    if-eqz v0, :cond_b

    .line 454
    const/16 v0, 0x84

    invoke-direct {p0, v9, v0}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    .line 455
    :cond_b
    const-wide/16 v3, 0x20

    and-long v3, p5, v3

    cmp-long v0, v3, v6

    if-eqz v0, :cond_c

    .line 456
    const/16 v0, 0x85

    invoke-direct {p0, v9, v0}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    .line 457
    :cond_c
    const-wide/16 v3, 0x40

    and-long v3, p5, v3

    cmp-long v0, v3, v6

    if-eqz v0, :cond_d

    .line 458
    const/16 v0, 0x86

    invoke-direct {p0, v9, v0}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    .line 459
    :cond_d
    and-long v0, p5, v1

    cmp-long v0, v0, v6

    if-eqz v0, :cond_e

    .line 460
    const/16 v0, 0x87

    invoke-direct {p0, v9, v0}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    .line 461
    :cond_e
    const-wide/16 v0, 0x100

    and-long v0, p5, v0

    cmp-long v0, v0, v6

    if-eqz v0, :cond_10

    .line 462
    const/16 v0, 0x88

    invoke-direct {p0, v9, v0}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    .line 432
    :sswitch_15
    const-wide/16 v0, 0x1

    and-long v0, p5, v0

    cmp-long v0, v0, v6

    if-eqz v0, :cond_f

    .line 434
    const/16 v0, 0x80

    iput v0, v14, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    .line 435
    iput v9, v14, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedPos:I

    .line 437
    :cond_f
    const-wide/16 v4, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x200

    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v6, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v1 .. v13}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJJJ)I

    move-result v0

    return v0

    .line 428
    :sswitch_16
    const-wide/16 v0, 0x4000

    and-long v0, p5, v0

    cmp-long v0, v0, v6

    if-eqz v0, :cond_10

    .line 429
    const/16 v0, 0x8e

    invoke-direct {p0, v9, v0}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    .line 426
    :sswitch_17
    const-wide/16 v4, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x1000

    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v6, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v1 .. v13}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJJJ)I

    move-result v0

    return v0

    .line 422
    :sswitch_18
    const-wide/high16 v0, 0x80000000000000L

    and-long v0, p3, v0

    cmp-long v0, v0, v6

    if-eqz v0, :cond_10

    .line 423
    const/16 v0, 0x77

    invoke-direct {p0, v9, v0}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    .line 418
    :sswitch_19
    const-wide/high16 v0, 0x40000000000000L

    and-long v0, p3, v0

    cmp-long v0, v0, v6

    if-eqz v0, :cond_10

    .line 419
    const/16 v0, 0x76

    invoke-direct {p0, v9, v0}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    .line 414
    :sswitch_1a
    and-long v0, p1, v1

    cmp-long v0, v0, v6

    if-eqz v0, :cond_10

    .line 415
    const/4 v0, 0x7

    const/16 v1, 0x3a

    invoke-direct {p0, v9, v0, v1}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 410
    :sswitch_1b
    const-wide/high16 v0, 0x20000000000000L

    and-long v0, p3, v0

    cmp-long v0, v0, v6

    if-eqz v0, :cond_10

    .line 411
    const/16 v0, 0x75

    invoke-direct {p0, v9, v0}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    .line 408
    :sswitch_1c
    const-wide/16 v4, 0x0

    const-wide/32 v8, 0x4000000

    const-wide/16 v12, 0x0

    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v6, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v1 .. v13}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJJJ)I

    move-result v0

    return v0

    .line 404
    :sswitch_1d
    and-long v0, p1, v4

    cmp-long v0, v0, v6

    if-eqz v0, :cond_10

    .line 405
    const/4 v0, 0x2

    invoke-direct {p0, v9, v0}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    .line 525
    :cond_10
    :goto_1
    const/4 v2, 0x0

    move-object v1, p0

    move-wide/from16 v3, p1

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    invoke-direct/range {v1 .. v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    .line 397
    :catch_0
    move-exception v0

    .line 398
    .local v0, "e":Ljava/io/IOException;
    const/4 v2, 0x0

    move-object v1, p0

    move-wide/from16 v3, p1

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    invoke-direct/range {v1 .. v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    .line 399
    return v9

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_1d
        0x22 -> :sswitch_1c
        0x26 -> :sswitch_1b
        0x2a -> :sswitch_1a
        0x2b -> :sswitch_19
        0x2d -> :sswitch_18
        0x2e -> :sswitch_17
        0x3a -> :sswitch_16
        0x3c -> :sswitch_15
        0x3d -> :sswitch_14
        0x3e -> :sswitch_13
        0x61 -> :sswitch_12
        0x62 -> :sswitch_11
        0x65 -> :sswitch_10
        0x66 -> :sswitch_f
        0x68 -> :sswitch_e
        0x69 -> :sswitch_d
        0x6c -> :sswitch_c
        0x6d -> :sswitch_b
        0x6e -> :sswitch_a
        0x6f -> :sswitch_9
        0x70 -> :sswitch_8
        0x72 -> :sswitch_7
        0x73 -> :sswitch_6
        0x74 -> :sswitch_5
        0x75 -> :sswitch_4
        0x77 -> :sswitch_3
        0x78 -> :sswitch_2
        0x79 -> :sswitch_1
        0x7c -> :sswitch_0
    .end sparse-switch
.end method

.method private jjMoveStringLiteralDfa1_1(J)I
    .locals 7
    .param p1, "active0"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "active0"
        }
    .end annotation

    .line 2537
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->input_stream:Lorg/checkerframework/com/github/javaparser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->readChar()C

    move-result v1

    iput v1, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2540
    nop

    .line 2541
    const/4 v2, 0x2

    packed-switch v1, :pswitch_data_0

    .line 2548
    return v2

    .line 2544
    :pswitch_0
    const-wide/16 v3, 0x100

    and-long/2addr v3, p1

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_0

    .line 2545
    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    .line 2550
    :cond_0
    return v2

    .line 2538
    :catch_0
    move-exception v1

    .line 2539
    .local v1, "e":Ljava/io/IOException;
    return v0

    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_0
    .end packed-switch
.end method

.method private jjMoveStringLiteralDfa1_2(J)I
    .locals 7
    .param p1, "active0"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "active0"
        }
    .end annotation

    .line 2358
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->input_stream:Lorg/checkerframework/com/github/javaparser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->readChar()C

    move-result v1

    iput v1, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2361
    nop

    .line 2362
    const/4 v2, 0x2

    packed-switch v1, :pswitch_data_0

    .line 2369
    return v2

    .line 2365
    :pswitch_0
    const-wide/16 v3, 0x200

    and-long/2addr v3, p1

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_0

    .line 2366
    const/16 v1, 0x9

    invoke-direct {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    .line 2371
    :cond_0
    return v2

    .line 2359
    :catch_0
    move-exception v1

    .line 2360
    .local v1, "e":Ljava/io/IOException;
    return v0

    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_0
    .end packed-switch
.end method

.method private jjMoveStringLiteralDfa1_3(J)I
    .locals 7
    .param p1, "active1"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "active1"
        }
    .end annotation

    .line 2411
    :try_start_0
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->input_stream:Lorg/checkerframework/com/github/javaparser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->readChar()C

    move-result v0

    iput v0, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2415
    nop

    .line 2416
    packed-switch v0, :pswitch_data_0

    .line 2423
    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move-object v1, p0

    move-wide v5, p1

    invoke-direct/range {v1 .. v6}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfa_3(IJJ)I

    move-result v0

    return v0

    .line 2419
    :pswitch_0
    const-wide/32 v0, 0x8000000

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa2_3(JJ)I

    move-result v0

    return v0

    .line 2412
    :catch_0
    move-exception v0

    .line 2413
    .local v0, "e":Ljava/io/IOException;
    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move-object v1, p0

    move-wide v5, p1

    invoke-direct/range {v1 .. v6}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStopStringLiteralDfa_3(IJJ)I

    .line 2414
    const/4 v1, 0x1

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_0
    .end packed-switch
.end method

.method private jjMoveStringLiteralDfa2_0(JJJJJJ)I
    .locals 21
    .param p1, "old0"    # J
    .param p3, "active0"    # J
    .param p5, "old1"    # J
    .param p7, "active1"    # J
    .param p9, "old2"    # J
    .param p11, "active2"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "old0",
            "active0",
            "old1",
            "active1",
            "old2",
            "active2"
        }
    .end annotation

    .line 528
    move-object/from16 v14, p0

    and-long v0, p3, p1

    move-wide v15, v0

    .end local p3    # "active0":J
    .local v15, "active0":J
    and-long v2, p7, p5

    move-wide/from16 v17, v2

    .end local p7    # "active1":J
    .local v17, "active1":J
    or-long/2addr v0, v2

    and-long v2, p11, p9

    move-wide/from16 v19, v2

    .end local p11    # "active2":J
    .local v19, "active2":J
    or-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 529
    const/4 v2, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v3, p1

    move-wide/from16 v5, p5

    move-wide/from16 v7, p9

    invoke-direct/range {v1 .. v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    .line 530
    :cond_0
    const/4 v9, 0x2

    :try_start_0
    iget-object v0, v14, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->input_stream:Lorg/checkerframework/com/github/javaparser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->readChar()C

    move-result v0

    iput v0, v14, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 534
    nop

    .line 535
    const/16 v1, 0x8d

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 602
    :sswitch_0
    const-wide/high16 v4, 0x1000000000000000L

    and-long/2addr v4, v15

    cmp-long v0, v4, v2

    if-eqz v0, :cond_5

    .line 603
    const/16 v0, 0x3c

    invoke-direct {v14, v9, v0, v1}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 598
    :sswitch_1
    const-wide v4, 0x40000000000L

    and-long/2addr v4, v15

    cmp-long v0, v4, v2

    if-eqz v0, :cond_5

    .line 599
    const/16 v0, 0x2a

    invoke-direct {v14, v9, v0, v1}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 596
    :sswitch_2
    const-wide v4, 0x800000005000000L

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v1, p0

    move-wide v2, v15

    move-wide/from16 v6, v17

    move-wide/from16 v10, v19

    invoke-direct/range {v1 .. v13}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJJJ)I

    move-result v0

    return v0

    .line 589
    :sswitch_3
    const-wide v0, 0x4000000000L

    and-long/2addr v0, v15

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 591
    const/16 v0, 0x26

    iput v0, v14, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    .line 592
    iput v9, v14, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedPos:I

    .line 594
    :cond_1
    const-wide v4, 0x1028208028000L

    const-wide/16 v8, 0x8

    const-wide/16 v12, 0x0

    move-object/from16 v1, p0

    move-wide v2, v15

    move-wide/from16 v6, v17

    move-wide/from16 v10, v19

    invoke-direct/range {v1 .. v13}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJJJ)I

    move-result v0

    return v0

    .line 587
    :sswitch_4
    const-wide v4, 0x2002011800L

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v1, p0

    move-wide v2, v15

    move-wide/from16 v6, v17

    move-wide/from16 v10, v19

    invoke-direct/range {v1 .. v13}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJJJ)I

    move-result v0

    return v0

    .line 583
    :sswitch_5
    const-wide v4, 0x100000000L

    and-long/2addr v4, v15

    cmp-long v0, v4, v2

    if-eqz v0, :cond_2

    .line 584
    const/16 v0, 0x20

    invoke-direct {v14, v9, v0, v1}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 585
    :cond_2
    const-wide/high16 v4, 0x308000000000000L    # 4.69726959377103E-294

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v1, p0

    move-wide v2, v15

    move-wide/from16 v6, v17

    move-wide/from16 v10, v19

    invoke-direct/range {v1 .. v13}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJJJ)I

    move-result v0

    return v0

    .line 581
    :sswitch_6
    const-wide/16 v4, 0x0

    const-wide/16 v8, 0x2

    const-wide/16 v12, 0x0

    move-object/from16 v1, p0

    move-wide v2, v15

    move-wide/from16 v6, v17

    move-wide/from16 v10, v19

    invoke-direct/range {v1 .. v13}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJJJ)I

    move-result v0

    return v0

    .line 579
    :sswitch_7
    const-wide v4, 0x10001800000000L

    const-wide/16 v8, 0x100

    const-wide/16 v12, 0x0

    move-object/from16 v1, p0

    move-wide v2, v15

    move-wide/from16 v6, v17

    move-wide/from16 v10, v19

    invoke-direct/range {v1 .. v13}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJJJ)I

    move-result v0

    return v0

    .line 577
    :sswitch_8
    const-wide v4, 0x2400080002000L

    const-wide/16 v8, 0x200

    const-wide/16 v12, 0x0

    move-object/from16 v1, p0

    move-wide v2, v15

    move-wide/from16 v6, v17

    move-wide/from16 v10, v19

    invoke-direct/range {v1 .. v13}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJJJ)I

    move-result v0

    return v0

    .line 575
    :sswitch_9
    const-wide v4, 0x40010060300000L

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v1, p0

    move-wide v2, v15

    move-wide/from16 v6, v17

    move-wide/from16 v10, v19

    invoke-direct/range {v1 .. v13}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJJJ)I

    move-result v0

    return v0

    .line 573
    :sswitch_a
    const-wide v4, 0x4000080010000000L    # 2.0039063692092896

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v1, p0

    move-wide v2, v15

    move-wide/from16 v6, v17

    move-wide/from16 v10, v19

    invoke-direct/range {v1 .. v13}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJJJ)I

    move-result v0

    return v0

    .line 571
    :sswitch_b
    const-wide v4, -0x5f5fe00000000000L

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v1, p0

    move-wide v2, v15

    move-wide/from16 v6, v17

    move-wide/from16 v10, v19

    invoke-direct/range {v1 .. v13}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJJJ)I

    move-result v0

    return v0

    .line 569
    :sswitch_c
    const-wide/32 v4, 0x400000

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v1, p0

    move-wide v2, v15

    move-wide/from16 v6, v17

    move-wide/from16 v10, v19

    invoke-direct/range {v1 .. v13}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJJJ)I

    move-result v0

    return v0

    .line 567
    :sswitch_d
    const-wide/16 v4, 0x4000

    const-wide/16 v8, 0x71

    const-wide/16 v12, 0x0

    move-object/from16 v1, p0

    move-wide v2, v15

    move-wide/from16 v6, v17

    move-wide/from16 v10, v19

    invoke-direct/range {v1 .. v13}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJJJ)I

    move-result v0

    return v0

    .line 565
    :sswitch_e
    const-wide/16 v4, 0x0

    const-wide/16 v8, 0x80

    const-wide/16 v12, 0x0

    move-object/from16 v1, p0

    move-wide v2, v15

    move-wide/from16 v6, v17

    move-wide/from16 v10, v19

    invoke-direct/range {v1 .. v13}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJJJ)I

    move-result v0

    return v0

    .line 563
    :sswitch_f
    const-wide v4, 0x100000000000L

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v1, p0

    move-wide v2, v15

    move-wide/from16 v6, v17

    move-wide/from16 v10, v19

    invoke-direct/range {v1 .. v13}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJJJ)I

    move-result v0

    return v0

    .line 561
    :sswitch_10
    const-wide v4, 0x800000000000L

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v1, p0

    move-wide v2, v15

    move-wide/from16 v6, v17

    move-wide/from16 v10, v19

    invoke-direct/range {v1 .. v13}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJJJ)I

    move-result v0

    return v0

    .line 559
    :sswitch_11
    const-wide v4, 0x4040000000c0000L

    const-wide/16 v8, 0x400

    const-wide/16 v12, 0x0

    move-object/from16 v1, p0

    move-wide v2, v15

    move-wide/from16 v6, v17

    move-wide/from16 v10, v19

    invoke-direct/range {v1 .. v13}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJJJ)I

    move-result v0

    return v0

    .line 552
    :sswitch_12
    const-wide/32 v0, 0x8000

    and-long v0, v19, v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 554
    const/16 v0, 0x8f

    iput v0, v14, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    .line 555
    iput v9, v14, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedPos:I

    .line 557
    :cond_3
    const-wide/16 v4, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x800

    move-object/from16 v1, p0

    move-wide v2, v15

    move-wide/from16 v6, v17

    move-wide/from16 v10, v19

    invoke-direct/range {v1 .. v13}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJJJ)I

    move-result v0

    return v0

    .line 546
    :sswitch_13
    const-wide/16 v0, 0x200

    and-long v0, v19, v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    .line 547
    const/16 v0, 0x89

    invoke-direct {v14, v9, v0}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    .line 548
    :cond_4
    const-wide/16 v0, 0x400

    and-long v0, v19, v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    .line 549
    const/16 v0, 0x8a

    invoke-direct {v14, v9, v0}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    .line 542
    :sswitch_14
    const-wide/16 v0, 0x1000

    and-long v0, v19, v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    .line 543
    const/16 v0, 0x8c

    invoke-direct {v14, v9, v0}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    .line 538
    :sswitch_15
    const-wide/32 v0, 0x4000000

    and-long v0, v17, v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    .line 539
    const/16 v0, 0x5a

    invoke-direct {v14, v9, v0}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    .line 608
    :cond_5
    :goto_0
    const/4 v2, 0x1

    move-object/from16 v1, p0

    move-wide v3, v15

    move-wide/from16 v5, v17

    move-wide/from16 v7, v19

    invoke-direct/range {v1 .. v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    .line 531
    :catch_0
    move-exception v0

    .line 532
    .local v0, "e":Ljava/io/IOException;
    const/4 v2, 0x1

    move-object/from16 v1, p0

    move-wide v3, v15

    move-wide/from16 v5, v17

    move-wide/from16 v7, v19

    invoke-direct/range {v1 .. v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    .line 533
    return v9

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_15
        0x2e -> :sswitch_14
        0x3d -> :sswitch_13
        0x3e -> :sswitch_12
        0x61 -> :sswitch_11
        0x62 -> :sswitch_10
        0x63 -> :sswitch_f
        0x64 -> :sswitch_e
        0x65 -> :sswitch_d
        0x66 -> :sswitch_c
        0x69 -> :sswitch_b
        0x6c -> :sswitch_a
        0x6e -> :sswitch_9
        0x6f -> :sswitch_8
        0x70 -> :sswitch_7
        0x71 -> :sswitch_6
        0x72 -> :sswitch_5
        0x73 -> :sswitch_4
        0x74 -> :sswitch_3
        0x75 -> :sswitch_2
        0x77 -> :sswitch_1
        0x79 -> :sswitch_0
    .end sparse-switch
.end method

.method private jjMoveStringLiteralDfa2_3(JJ)I
    .locals 10
    .param p1, "old1"    # J
    .param p3, "active1"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "old1",
            "active1"
        }
    .end annotation

    .line 2426
    and-long v0, p3, p1

    move-wide p3, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 2427
    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v4, p0

    move-wide v8, p1

    invoke-direct/range {v4 .. v9}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfa_3(IJJ)I

    move-result v0

    return v0

    .line 2428
    :cond_0
    const/4 v0, 0x2

    :try_start_0
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->input_stream:Lorg/checkerframework/com/github/javaparser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->readChar()C

    move-result v1

    iput v1, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2432
    nop

    .line 2433
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 2436
    :pswitch_0
    const-wide/32 v4, 0x8000000

    and-long/2addr v4, p3

    cmp-long v1, v4, v2

    if-eqz v1, :cond_1

    .line 2437
    const/16 v1, 0x5b

    invoke-direct {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    .line 2442
    :cond_1
    :goto_0
    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    move-object v2, p0

    move-wide v6, p3

    invoke-direct/range {v2 .. v7}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfa_3(IJJ)I

    move-result v0

    return v0

    .line 2429
    :catch_0
    move-exception v1

    .line 2430
    .local v1, "e":Ljava/io/IOException;
    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    move-object v2, p0

    move-wide v6, p3

    invoke-direct/range {v2 .. v7}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStopStringLiteralDfa_3(IJJ)I

    .line 2431
    return v0

    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_0
    .end packed-switch
.end method

.method private jjMoveStringLiteralDfa3_0(JJJJJJ)I
    .locals 21
    .param p1, "old0"    # J
    .param p3, "active0"    # J
    .param p5, "old1"    # J
    .param p7, "active1"    # J
    .param p9, "old2"    # J
    .param p11, "active2"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "old0",
            "active0",
            "old1",
            "active1",
            "old2",
            "active2"
        }
    .end annotation

    .line 611
    move-object/from16 v14, p0

    and-long v0, p3, p1

    move-wide v15, v0

    .end local p3    # "active0":J
    .local v15, "active0":J
    and-long v2, p7, p5

    move-wide/from16 v17, v2

    .end local p7    # "active1":J
    .local v17, "active1":J
    or-long/2addr v0, v2

    and-long v2, p11, p9

    move-wide/from16 v19, v2

    .end local p11    # "active2":J
    .local v19, "active2":J
    or-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 612
    const/4 v2, 0x1

    move-object/from16 v1, p0

    move-wide/from16 v3, p1

    move-wide/from16 v5, p5

    move-wide/from16 v7, p9

    invoke-direct/range {v1 .. v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    .line 613
    :cond_0
    const/4 v9, 0x3

    :try_start_0
    iget-object v0, v14, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->input_stream:Lorg/checkerframework/com/github/javaparser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->readChar()C

    move-result v0

    iput v0, v14, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 617
    nop

    .line 618
    const/16 v1, 0x8d

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 690
    :sswitch_0
    const-wide v4, 0x200000000000L

    const-wide/16 v8, 0x200

    const-wide/16 v12, 0x0

    move-object/from16 v1, p0

    move-wide v2, v15

    move-wide/from16 v6, v17

    move-wide/from16 v10, v19

    invoke-direct/range {v1 .. v13}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJJJ)I

    move-result v0

    return v0

    .line 688
    :sswitch_1
    const-wide/high16 v4, 0x1000000000000L

    const-wide/16 v8, 0x82

    const-wide/16 v12, 0x0

    move-object/from16 v1, p0

    move-wide v2, v15

    move-wide/from16 v6, v17

    move-wide/from16 v10, v19

    invoke-direct/range {v1 .. v13}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJJJ)I

    move-result v0

    return v0

    .line 686
    :sswitch_2
    const-wide v4, 0x24402000200800L

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v1, p0

    move-wide v2, v15

    move-wide/from16 v6, v17

    move-wide/from16 v10, v19

    invoke-direct/range {v1 .. v13}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJJJ)I

    move-result v0

    return v0

    .line 680
    :sswitch_3
    const-wide/high16 v4, 0x80000000000000L

    and-long/2addr v4, v15

    cmp-long v0, v4, v2

    if-eqz v0, :cond_1

    .line 681
    const/16 v0, 0x37

    invoke-direct {v14, v9, v0, v1}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 682
    :cond_1
    const-wide/16 v4, 0x40

    and-long v4, v17, v4

    cmp-long v0, v4, v2

    if-eqz v0, :cond_2

    .line 683
    const/16 v0, 0x46

    invoke-direct {v14, v9, v0, v1}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 684
    :cond_2
    const-wide/32 v4, 0x10180000

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v1, p0

    move-wide v2, v15

    move-wide/from16 v6, v17

    move-wide/from16 v10, v19

    invoke-direct/range {v1 .. v13}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJJJ)I

    move-result v0

    return v0

    .line 676
    :sswitch_4
    const-wide/32 v4, 0x40000

    and-long/2addr v4, v15

    cmp-long v0, v4, v2

    if-eqz v0, :cond_3

    .line 677
    const/16 v0, 0x12

    invoke-direct {v14, v9, v0, v1}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 678
    :cond_3
    const-wide/high16 v4, 0x2000000000000L

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v1, p0

    move-wide v2, v15

    move-wide/from16 v6, v17

    move-wide/from16 v10, v19

    invoke-direct/range {v1 .. v13}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJJJ)I

    move-result v0

    return v0

    .line 672
    :sswitch_5
    const-wide v4, 0x200000000L

    and-long/2addr v4, v15

    cmp-long v0, v4, v2

    if-eqz v0, :cond_4

    .line 673
    const/16 v0, 0x21

    invoke-direct {v14, v9, v0, v1}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 674
    :cond_4
    const-wide v4, 0x300001000000000L

    const-wide/16 v8, 0x100

    const-wide/16 v12, 0x0

    move-object/from16 v1, p0

    move-wide v2, v15

    move-wide/from16 v6, v17

    move-wide/from16 v10, v19

    invoke-direct/range {v1 .. v13}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJJJ)I

    move-result v0

    return v0

    .line 665
    :sswitch_6
    const-wide/16 v0, 0x10

    and-long v0, v17, v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    .line 667
    const/16 v0, 0x44

    iput v0, v14, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    .line 668
    iput v9, v14, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedPos:I

    .line 670
    :cond_5
    const-wide/high16 v4, 0x400000000000000L

    const-wide/16 v8, 0x420

    const-wide/16 v12, 0x0

    move-object/from16 v1, p0

    move-wide v2, v15

    move-wide/from16 v6, v17

    move-wide/from16 v10, v19

    invoke-direct/range {v1 .. v13}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJJJ)I

    move-result v0

    return v0

    .line 661
    :sswitch_7
    const-wide/32 v4, 0x4000000

    and-long/2addr v4, v15

    cmp-long v0, v4, v2

    if-eqz v0, :cond_b

    .line 662
    const/16 v0, 0x1a

    invoke-direct {v14, v9, v0, v1}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 657
    :sswitch_8
    const-wide v4, 0x80000000000L

    and-long/2addr v4, v15

    cmp-long v0, v4, v2

    if-eqz v0, :cond_6

    .line 658
    const/16 v0, 0x2b

    invoke-direct {v14, v9, v0, v1}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 659
    :cond_6
    const-wide v4, -0x7fff7ff7ffffe000L    # -6.9550534048725E-310

    const-wide/16 v8, 0x1

    const-wide/16 v12, 0x0

    move-object/from16 v1, p0

    move-wide v2, v15

    move-wide/from16 v6, v17

    move-wide/from16 v10, v19

    invoke-direct/range {v1 .. v13}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJJJ)I

    move-result v0

    return v0

    .line 655
    :sswitch_9
    const-wide v4, 0x100000000000L

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v1, p0

    move-wide v2, v15

    move-wide/from16 v6, v17

    move-wide/from16 v10, v19

    invoke-direct/range {v1 .. v13}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJJJ)I

    move-result v0

    return v0

    .line 653
    :sswitch_a
    const-wide v4, 0x8020000000000L

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v1, p0

    move-wide v2, v15

    move-wide/from16 v6, v17

    move-wide/from16 v10, v19

    invoke-direct/range {v1 .. v13}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJJJ)I

    move-result v0

    return v0

    .line 649
    :sswitch_b
    const-wide/16 v4, 0x8

    and-long v4, v17, v4

    cmp-long v0, v4, v2

    if-eqz v0, :cond_b

    .line 650
    const/16 v0, 0x43

    invoke-direct {v14, v9, v0, v1}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 645
    :sswitch_c
    const-wide v4, 0x10000000000L

    and-long/2addr v4, v15

    cmp-long v0, v4, v2

    if-eqz v0, :cond_b

    .line 646
    const/16 v0, 0x28

    invoke-direct {v14, v9, v0, v1}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 635
    :sswitch_d
    const-wide/32 v4, 0x8000

    and-long/2addr v4, v15

    cmp-long v0, v4, v2

    if-eqz v0, :cond_7

    .line 636
    const/16 v0, 0xf

    invoke-direct {v14, v9, v0, v1}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 637
    :cond_7
    const-wide/32 v4, 0x10000

    and-long/2addr v4, v15

    cmp-long v0, v4, v2

    if-eqz v0, :cond_8

    .line 638
    const/16 v0, 0x10

    invoke-direct {v14, v9, v0, v1}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 639
    :cond_8
    const-wide/32 v4, 0x2000000

    and-long/2addr v4, v15

    cmp-long v0, v4, v2

    if-eqz v0, :cond_9

    .line 640
    const/16 v0, 0x19

    invoke-direct {v14, v9, v0, v1}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 641
    :cond_9
    const-wide/high16 v4, 0x800000000000000L

    and-long/2addr v4, v15

    cmp-long v0, v4, v2

    if-eqz v0, :cond_a

    .line 642
    const/16 v0, 0x3b

    invoke-direct {v14, v9, v0, v1}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 643
    :cond_a
    const-wide v4, 0x10008008001000L

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v1, p0

    move-wide v2, v15

    move-wide/from16 v6, v17

    move-wide/from16 v10, v19

    invoke-direct/range {v1 .. v13}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJJJ)I

    move-result v0

    return v0

    .line 631
    :sswitch_e
    const-wide/high16 v4, 0x2000000000000000L

    and-long/2addr v4, v15

    cmp-long v0, v4, v2

    if-eqz v0, :cond_b

    .line 632
    const/16 v0, 0x3d

    invoke-direct {v14, v9, v0, v1}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 629
    :sswitch_f
    const-wide v4, 0x40000000020000L

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v1, p0

    move-wide v2, v15

    move-wide/from16 v6, v17

    move-wide/from16 v10, v19

    invoke-direct/range {v1 .. v13}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJJJ)I

    move-result v0

    return v0

    .line 627
    :sswitch_10
    const-wide/32 v4, 0x1000000

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v1, p0

    move-wide v2, v15

    move-wide/from16 v6, v17

    move-wide/from16 v10, v19

    invoke-direct/range {v1 .. v13}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJJJ)I

    move-result v0

    return v0

    .line 625
    :sswitch_11
    const-wide v4, 0x40000000e0404000L    # 2.000001670799975

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v1, p0

    move-wide v2, v15

    move-wide/from16 v6, v17

    move-wide/from16 v10, v19

    invoke-direct/range {v1 .. v13}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJJJ)I

    move-result v0

    return v0

    .line 621
    :sswitch_12
    const-wide/16 v0, 0x800

    and-long v0, v19, v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    .line 622
    const/16 v0, 0x8b

    invoke-direct {v14, v9, v0}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    .line 694
    :cond_b
    :goto_0
    const/4 v2, 0x2

    move-object/from16 v1, p0

    move-wide v3, v15

    move-wide/from16 v5, v17

    move-wide/from16 v7, v19

    invoke-direct/range {v1 .. v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    .line 614
    :catch_0
    move-exception v0

    .line 615
    .local v0, "e":Ljava/io/IOException;
    const/4 v2, 0x2

    move-object/from16 v1, p0

    move-wide v3, v15

    move-wide/from16 v5, v17

    move-wide/from16 v7, v19

    invoke-direct/range {v1 .. v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    .line 616
    return v9

    :sswitch_data_0
    .sparse-switch
        0x3d -> :sswitch_12
        0x61 -> :sswitch_11
        0x62 -> :sswitch_10
        0x63 -> :sswitch_f
        0x64 -> :sswitch_e
        0x65 -> :sswitch_d
        0x67 -> :sswitch_c
        0x68 -> :sswitch_b
        0x69 -> :sswitch_a
        0x6b -> :sswitch_9
        0x6c -> :sswitch_8
        0x6d -> :sswitch_7
        0x6e -> :sswitch_6
        0x6f -> :sswitch_5
        0x72 -> :sswitch_4
        0x73 -> :sswitch_3
        0x74 -> :sswitch_2
        0x75 -> :sswitch_1
        0x76 -> :sswitch_0
    .end sparse-switch
.end method

.method private jjMoveStringLiteralDfa4_0(JJJJJJ)I
    .locals 17
    .param p1, "old0"    # J
    .param p3, "active0"    # J
    .param p5, "old1"    # J
    .param p7, "active1"    # J
    .param p9, "old2"    # J
    .param p11, "active2"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "old0",
            "active0",
            "old1",
            "active1",
            "old2",
            "active2"
        }
    .end annotation

    .line 697
    move-object/from16 v10, p0

    and-long v0, p3, p1

    move-wide v11, v0

    .end local p3    # "active0":J
    .local v11, "active0":J
    and-long v2, p7, p5

    move-wide v13, v2

    .end local p7    # "active1":J
    .local v13, "active1":J
    or-long/2addr v0, v2

    and-long v2, p11, p9

    move-wide v15, v2

    .end local p11    # "active2":J
    .local v15, "active2":J
    or-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 698
    const/4 v2, 0x2

    move-object/from16 v1, p0

    move-wide/from16 v3, p1

    move-wide/from16 v5, p5

    move-wide/from16 v7, p9

    invoke-direct/range {v1 .. v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    .line 699
    :cond_0
    const/4 v9, 0x4

    :try_start_0
    iget-object v0, v10, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->input_stream:Lorg/checkerframework/com/github/javaparser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->readChar()C

    move-result v0

    iput v0, v10, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 703
    nop

    .line 704
    const/16 v1, 0x8d

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 762
    :pswitch_1
    const-wide/high16 v0, 0x100000000000000L

    and-long/2addr v0, v11

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 764
    const/16 v0, 0x38

    iput v0, v10, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    .line 765
    iput v9, v10, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedPos:I

    .line 767
    :cond_1
    const-wide/high16 v4, 0x200000000000000L

    const-wide/16 v8, 0x0

    move-object/from16 v1, p0

    move-wide v2, v11

    move-wide v6, v13

    invoke-direct/range {v1 .. v9}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa5_0(JJJJ)I

    move-result v0

    return v0

    .line 760
    :pswitch_2
    const-wide v4, 0x20000000000L

    const-wide/16 v8, 0x0

    move-object/from16 v1, p0

    move-wide v2, v11

    move-wide v6, v13

    invoke-direct/range {v1 .. v9}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa5_0(JJJJ)I

    move-result v0

    return v0

    .line 758
    :pswitch_3
    const-wide/32 v4, 0x400000

    const-wide/16 v8, 0x0

    move-object/from16 v1, p0

    move-wide v2, v11

    move-wide v6, v13

    invoke-direct/range {v1 .. v9}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa5_0(JJJJ)I

    move-result v0

    return v0

    .line 750
    :pswitch_4
    const-wide/32 v4, 0x100000

    and-long/2addr v4, v11

    cmp-long v0, v4, v2

    if-eqz v0, :cond_2

    .line 751
    const/16 v0, 0x14

    invoke-direct {v10, v9, v0, v1}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 752
    :cond_2
    const-wide v4, 0x80000000L

    and-long/2addr v4, v11

    cmp-long v0, v4, v2

    if-eqz v0, :cond_3

    .line 753
    const/16 v0, 0x1f

    invoke-direct {v10, v9, v0, v1}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 754
    :cond_3
    const-wide/high16 v4, 0x2000000000000L

    and-long/2addr v4, v11

    cmp-long v0, v4, v2

    if-eqz v0, :cond_4

    .line 755
    const/16 v0, 0x31

    invoke-direct {v10, v9, v0, v1}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 756
    :cond_4
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    const-wide/16 v8, 0x0

    move-object/from16 v1, p0

    move-wide v2, v11

    move-wide v6, v13

    invoke-direct/range {v1 .. v9}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa5_0(JJJJ)I

    move-result v0

    return v0

    .line 744
    :pswitch_5
    const-wide/32 v4, 0x80000

    and-long/2addr v4, v11

    cmp-long v0, v4, v2

    if-eqz v0, :cond_5

    .line 745
    const/16 v0, 0x13

    invoke-direct {v10, v9, v0, v1}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 746
    :cond_5
    const-wide/16 v4, 0x20

    and-long/2addr v4, v13

    cmp-long v0, v4, v2

    if-eqz v0, :cond_6

    .line 747
    const/16 v0, 0x45

    invoke-direct {v10, v9, v0, v1}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 748
    :cond_6
    const-wide/high16 v4, 0x400000000000000L

    const-wide/16 v8, 0x400

    move-object/from16 v1, p0

    move-wide v2, v11

    move-wide v6, v13

    invoke-direct/range {v1 .. v9}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa5_0(JJJJ)I

    move-result v0

    return v0

    .line 740
    :pswitch_6
    const-wide/high16 v4, 0x10000000000000L

    and-long/2addr v4, v11

    cmp-long v0, v4, v2

    if-eqz v0, :cond_7

    .line 741
    const/16 v0, 0x34

    invoke-direct {v10, v9, v0, v1}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 742
    :cond_7
    const-wide v4, 0x1009000001800L

    const-wide/16 v8, 0x100

    move-object/from16 v1, p0

    move-wide v2, v11

    move-wide v6, v13

    invoke-direct/range {v1 .. v9}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa5_0(JJJJ)I

    move-result v0

    return v0

    .line 738
    :pswitch_7
    const-wide/32 v4, 0x8000000

    const-wide/16 v8, 0x0

    move-object/from16 v1, p0

    move-wide v2, v11

    move-wide v6, v13

    invoke-direct/range {v1 .. v9}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa5_0(JJJJ)I

    move-result v0

    return v0

    .line 731
    :pswitch_8
    const-wide/32 v0, 0x20000000

    and-long/2addr v0, v11

    cmp-long v0, v0, v2

    if-eqz v0, :cond_8

    .line 733
    const/16 v0, 0x1d

    iput v0, v10, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    .line 734
    iput v9, v10, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedPos:I

    .line 736
    :cond_8
    const-wide/32 v4, 0x41000000

    const-wide/16 v8, 0x80

    move-object/from16 v1, p0

    move-wide v2, v11

    move-wide v6, v13

    invoke-direct/range {v1 .. v9}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa5_0(JJJJ)I

    move-result v0

    return v0

    .line 727
    :pswitch_9
    const-wide/16 v4, 0x4000

    and-long/2addr v4, v11

    cmp-long v0, v4, v2

    if-eqz v0, :cond_c

    .line 728
    const/16 v0, 0xe

    invoke-direct {v10, v9, v0, v1}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 725
    :pswitch_a
    const-wide v4, 0x4800000200000L

    const-wide/16 v8, 0x202

    move-object/from16 v1, p0

    move-wide v2, v11

    move-wide v6, v13

    invoke-direct/range {v1 .. v9}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa5_0(JJJJ)I

    move-result v0

    return v0

    .line 721
    :pswitch_b
    const-wide/32 v4, 0x20000

    and-long/2addr v4, v11

    cmp-long v0, v4, v2

    if-eqz v0, :cond_9

    .line 722
    const/16 v0, 0x11

    invoke-direct {v10, v9, v0, v1}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 723
    :cond_9
    const-wide/high16 v4, 0x40000000000000L

    const-wide/16 v8, 0x0

    move-object/from16 v1, p0

    move-wide v2, v11

    move-wide v6, v13

    invoke-direct/range {v1 .. v9}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa5_0(JJJJ)I

    move-result v0

    return v0

    .line 715
    :pswitch_c
    const-wide/32 v4, 0x10000000

    and-long/2addr v4, v11

    cmp-long v0, v4, v2

    if-eqz v0, :cond_a

    .line 716
    const/16 v0, 0x1c

    invoke-direct {v10, v9, v0, v1}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 717
    :cond_a
    const-wide/high16 v4, -0x8000000000000000L

    and-long/2addr v4, v11

    cmp-long v0, v4, v2

    if-eqz v0, :cond_b

    .line 718
    const/16 v0, 0x3f

    invoke-direct {v10, v9, v0, v1}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 719
    :cond_b
    const-wide v4, 0x400800002000L

    const-wide/16 v8, 0x0

    move-object/from16 v1, p0

    move-wide v2, v11

    move-wide v6, v13

    invoke-direct/range {v1 .. v9}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa5_0(JJJJ)I

    move-result v0

    return v0

    .line 711
    :pswitch_d
    const-wide/16 v4, 0x1

    and-long/2addr v4, v13

    cmp-long v0, v4, v2

    if-eqz v0, :cond_c

    .line 712
    const/16 v0, 0x40

    invoke-direct {v10, v9, v0, v1}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 709
    :pswitch_e
    const-wide/high16 v4, 0x28000000000000L

    const-wide/16 v8, 0x0

    move-object/from16 v1, p0

    move-wide v2, v11

    move-wide v6, v13

    invoke-direct/range {v1 .. v9}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa5_0(JJJJ)I

    move-result v0

    return v0

    .line 707
    :pswitch_f
    const-wide v4, 0x302000000000L

    const-wide/16 v8, 0x0

    move-object/from16 v1, p0

    move-wide v2, v11

    move-wide v6, v13

    invoke-direct/range {v1 .. v9}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa5_0(JJJJ)I

    move-result v0

    return v0

    .line 771
    :cond_c
    :goto_0
    const/4 v2, 0x3

    const-wide/16 v7, 0x0

    move-object/from16 v1, p0

    move-wide v3, v11

    move-wide v5, v13

    invoke-direct/range {v1 .. v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    .line 700
    :catch_0
    move-exception v0

    .line 701
    .local v0, "e":Ljava/io/IOException;
    const/4 v2, 0x3

    const-wide/16 v7, 0x0

    move-object/from16 v1, p0

    move-wide v3, v11

    move-wide v5, v13

    invoke-direct/range {v1 .. v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    .line 702
    return v9

    nop

    :pswitch_data_0
    .packed-switch 0x61
        :pswitch_f
        :pswitch_0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private jjMoveStringLiteralDfa5_0(JJJJ)I
    .locals 15
    .param p1, "old0"    # J
    .param p3, "active0"    # J
    .param p5, "old1"    # J
    .param p7, "active1"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "old0",
            "active0",
            "old1",
            "active1"
        }
    .end annotation

    .line 774
    move-object v10, p0

    and-long v0, p3, p1

    move-wide v11, v0

    .end local p3    # "active0":J
    .local v11, "active0":J
    and-long v2, p7, p5

    move-wide v13, v2

    .end local p7    # "active1":J
    .local v13, "active1":J
    or-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 775
    const/4 v2, 0x3

    const-wide/16 v7, 0x0

    move-object v1, p0

    move-wide/from16 v3, p1

    move-wide/from16 v5, p5

    invoke-direct/range {v1 .. v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    .line 776
    :cond_0
    const/4 v9, 0x5

    :try_start_0
    iget-object v0, v10, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->input_stream:Lorg/checkerframework/com/github/javaparser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->readChar()C

    move-result v0

    iput v0, v10, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 780
    nop

    .line 781
    const/16 v1, 0x8d

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 826
    :pswitch_1
    const-wide/16 v4, 0x1000

    and-long/2addr v4, v11

    cmp-long v0, v4, v2

    if-eqz v0, :cond_1

    .line 827
    const/16 v0, 0xc

    invoke-direct {p0, v9, v0, v1}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 828
    :cond_1
    const-wide v4, 0x1000000000L

    and-long/2addr v4, v11

    cmp-long v0, v4, v2

    if-eqz v0, :cond_2

    .line 829
    const/16 v0, 0x24

    invoke-direct {p0, v9, v0, v1}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 830
    :cond_2
    const-wide v4, 0x8200000000000L

    const-wide/16 v8, 0x100

    move-object v1, p0

    move-wide v2, v11

    move-wide v6, v13

    invoke-direct/range {v1 .. v9}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa6_0(JJJJ)I

    move-result v0

    return v0

    .line 822
    :pswitch_2
    const-wide/high16 v4, 0x200000000000000L

    and-long/2addr v4, v11

    cmp-long v0, v4, v2

    if-eqz v0, :cond_8

    .line 823
    const/16 v0, 0x39

    invoke-direct {p0, v9, v0, v1}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 820
    :pswitch_3
    const-wide/high16 v4, 0x40000000000000L

    const-wide/16 v8, 0x2

    move-object v1, p0

    move-wide v2, v11

    move-wide v6, v13

    invoke-direct/range {v1 .. v9}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa6_0(JJJJ)I

    move-result v0

    return v0

    .line 816
    :pswitch_4
    const-wide/high16 v4, 0x1000000000000L

    and-long/2addr v4, v11

    cmp-long v0, v4, v2

    if-eqz v0, :cond_3

    .line 817
    const/16 v0, 0x30

    invoke-direct {p0, v9, v0, v1}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 818
    :cond_3
    const-wide v4, 0x2000200000L

    const-wide/16 v8, 0x0

    move-object v1, p0

    move-wide v2, v11

    move-wide v6, v13

    invoke-direct/range {v1 .. v9}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa6_0(JJJJ)I

    move-result v0

    return v0

    .line 814
    :pswitch_5
    const-wide v4, 0x800000000L

    const-wide/16 v8, 0x0

    move-object v1, p0

    move-wide v2, v11

    move-wide v6, v13

    invoke-direct/range {v1 .. v9}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa6_0(JJJJ)I

    move-result v0

    return v0

    .line 812
    :pswitch_6
    const-wide/32 v4, 0x40400000

    const-wide/16 v8, 0x0

    move-object v1, p0

    move-wide v2, v11

    move-wide v6, v13

    invoke-direct/range {v1 .. v9}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa6_0(JJJJ)I

    move-result v0

    return v0

    .line 810
    :pswitch_7
    const-wide/high16 v4, 0x4400000000000000L    # 3.6893488147419103E19

    const-wide/16 v8, 0x400

    move-object v1, p0

    move-wide v2, v11

    move-wide v6, v13

    invoke-direct/range {v1 .. v9}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa6_0(JJJJ)I

    move-result v0

    return v0

    .line 806
    :pswitch_8
    const-wide/high16 v4, 0x20000000000000L

    and-long/2addr v4, v11

    cmp-long v0, v4, v2

    if-eqz v0, :cond_8

    .line 807
    const/16 v0, 0x35

    invoke-direct {p0, v9, v0, v1}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 804
    :pswitch_9
    const-wide v4, 0x100000000000L

    const-wide/16 v8, 0x0

    move-object v1, p0

    move-wide v2, v11

    move-wide v6, v13

    invoke-direct/range {v1 .. v9}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa6_0(JJJJ)I

    move-result v0

    return v0

    .line 802
    :pswitch_a
    const-wide v4, 0x8000000000L

    const-wide/16 v8, 0x0

    move-object v1, p0

    move-wide v2, v11

    move-wide v6, v13

    invoke-direct/range {v1 .. v9}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa6_0(JJJJ)I

    move-result v0

    return v0

    .line 794
    :pswitch_b
    const-wide/32 v4, 0x1000000

    and-long/2addr v4, v11

    cmp-long v0, v4, v2

    if-eqz v0, :cond_4

    .line 795
    const/16 v0, 0x18

    invoke-direct {p0, v9, v0, v1}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 796
    :cond_4
    const-wide v4, 0x20000000000L

    and-long/2addr v4, v11

    cmp-long v0, v4, v2

    if-eqz v0, :cond_5

    .line 797
    const/16 v0, 0x29

    invoke-direct {p0, v9, v0, v1}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 798
    :cond_5
    const-wide/16 v4, 0x80

    and-long/2addr v4, v13

    cmp-long v0, v4, v2

    if-eqz v0, :cond_8

    .line 799
    const/16 v0, 0x47

    invoke-direct {p0, v9, v0, v1}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 792
    :pswitch_c
    const-wide/32 v4, 0x8000000

    const-wide/16 v8, 0x200

    move-object v1, p0

    move-wide v2, v11

    move-wide v6, v13

    invoke-direct/range {v1 .. v9}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa6_0(JJJJ)I

    move-result v0

    return v0

    .line 786
    :pswitch_d
    const-wide v4, 0x800000000000L

    and-long/2addr v4, v11

    cmp-long v0, v4, v2

    if-eqz v0, :cond_6

    .line 787
    const/16 v0, 0x2f

    invoke-direct {p0, v9, v0, v1}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 788
    :cond_6
    const-wide/high16 v4, 0x4000000000000L

    and-long/2addr v4, v11

    cmp-long v0, v4, v2

    if-eqz v0, :cond_7

    .line 789
    const/16 v0, 0x32

    invoke-direct {p0, v9, v0, v1}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 790
    :cond_7
    const-wide v4, 0x400000000000L

    const-wide/16 v8, 0x0

    move-object v1, p0

    move-wide v2, v11

    move-wide v6, v13

    invoke-direct/range {v1 .. v9}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa6_0(JJJJ)I

    move-result v0

    return v0

    .line 784
    :pswitch_e
    const-wide/16 v4, 0x2800

    const-wide/16 v8, 0x0

    move-object v1, p0

    move-wide v2, v11

    move-wide v6, v13

    invoke-direct/range {v1 .. v9}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa6_0(JJJJ)I

    move-result v0

    return v0

    .line 834
    :cond_8
    :goto_0
    const/4 v2, 0x4

    const-wide/16 v7, 0x0

    move-object v1, p0

    move-wide v3, v11

    move-wide v5, v13

    invoke-direct/range {v1 .. v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    .line 777
    :catch_0
    move-exception v0

    .line 778
    .local v0, "e":Ljava/io/IOException;
    const/4 v2, 0x4

    const-wide/16 v7, 0x0

    move-object v1, p0

    move-wide v3, v11

    move-wide v5, v13

    invoke-direct/range {v1 .. v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    .line 779
    return v9

    :pswitch_data_0
    .packed-switch 0x61
        :pswitch_e
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private jjMoveStringLiteralDfa6_0(JJJJ)I
    .locals 15
    .param p1, "old0"    # J
    .param p3, "active0"    # J
    .param p5, "old1"    # J
    .param p7, "active1"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "old0",
            "active0",
            "old1",
            "active1"
        }
    .end annotation

    .line 837
    move-object v10, p0

    and-long v0, p3, p1

    move-wide v11, v0

    .end local p3    # "active0":J
    .local v11, "active0":J
    and-long v2, p7, p5

    move-wide v13, v2

    .end local p7    # "active1":J
    .local v13, "active1":J
    or-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 838
    const/4 v2, 0x4

    const-wide/16 v7, 0x0

    move-object v1, p0

    move-wide/from16 v3, p1

    move-wide/from16 v5, p5

    invoke-direct/range {v1 .. v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    .line 839
    :cond_0
    const/4 v9, 0x6

    :try_start_0
    iget-object v0, v10, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->input_stream:Lorg/checkerframework/com/github/javaparser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->readChar()C

    move-result v0

    iput v0, v10, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 843
    nop

    .line 844
    const/16 v1, 0x8d

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 879
    :sswitch_0
    const-wide/32 v4, 0x40000000

    and-long/2addr v4, v11

    cmp-long v0, v4, v2

    if-eqz v0, :cond_5

    .line 880
    const/16 v0, 0x1e

    invoke-direct {p0, v9, v0, v1}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 877
    :sswitch_1
    const-wide/32 v4, 0x200000

    const-wide/16 v8, 0x0

    move-object v1, p0

    move-wide v2, v11

    move-wide v6, v13

    invoke-direct/range {v1 .. v9}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa7_0(JJJJ)I

    move-result v0

    return v0

    .line 873
    :sswitch_2
    const-wide/32 v4, 0x400000

    and-long/2addr v4, v11

    cmp-long v0, v4, v2

    if-eqz v0, :cond_1

    .line 874
    const/16 v0, 0x16

    invoke-direct {p0, v9, v0, v1}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 875
    :cond_1
    const-wide v4, 0x400000000000L

    const-wide/16 v8, 0x400

    move-object v1, p0

    move-wide v2, v11

    move-wide v6, v13

    invoke-direct/range {v1 .. v9}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa7_0(JJJJ)I

    move-result v0

    return v0

    .line 867
    :sswitch_3
    const-wide/32 v4, 0x8000000

    and-long/2addr v4, v11

    cmp-long v0, v4, v2

    if-eqz v0, :cond_2

    .line 868
    const/16 v0, 0x1b

    invoke-direct {p0, v9, v0, v1}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 869
    :cond_2
    const-wide/16 v4, 0x100

    and-long/2addr v4, v13

    cmp-long v0, v4, v2

    if-eqz v0, :cond_5

    .line 870
    const/16 v0, 0x48

    invoke-direct {p0, v9, v0, v1}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 865
    :sswitch_4
    const-wide/high16 v4, 0x40000000000000L

    const-wide/16 v8, 0x0

    move-object v1, p0

    move-wide v2, v11

    move-wide v6, v13

    invoke-direct/range {v1 .. v9}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa7_0(JJJJ)I

    move-result v0

    return v0

    .line 861
    :sswitch_5
    const-wide/16 v4, 0x2000

    and-long/2addr v4, v11

    cmp-long v0, v4, v2

    if-eqz v0, :cond_5

    .line 862
    const/16 v0, 0xd

    invoke-direct {p0, v9, v0, v1}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 859
    :sswitch_6
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    const-wide/16 v8, 0x0

    move-object v1, p0

    move-wide v2, v11

    move-wide v6, v13

    invoke-direct/range {v1 .. v9}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa7_0(JJJJ)I

    move-result v0

    return v0

    .line 857
    :sswitch_7
    const-wide/high16 v4, 0x8000000000000L

    const-wide/16 v8, 0x0

    move-object v1, p0

    move-wide v2, v11

    move-wide v6, v13

    invoke-direct/range {v1 .. v9}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa7_0(JJJJ)I

    move-result v0

    return v0

    .line 851
    :sswitch_8
    const-wide v4, 0x100000000000L

    and-long/2addr v4, v11

    cmp-long v0, v4, v2

    if-eqz v0, :cond_3

    .line 852
    const/16 v0, 0x2c

    invoke-direct {p0, v9, v0, v1}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 853
    :cond_3
    const-wide v4, 0x200000000000L

    and-long/2addr v4, v11

    cmp-long v0, v4, v2

    if-eqz v0, :cond_4

    .line 854
    const/16 v0, 0x2d

    invoke-direct {p0, v9, v0, v1}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 855
    :cond_4
    const-wide v4, 0x400000800000000L

    const-wide/16 v8, 0x202

    move-object v1, p0

    move-wide v2, v11

    move-wide v6, v13

    invoke-direct/range {v1 .. v9}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa7_0(JJJJ)I

    move-result v0

    return v0

    .line 849
    :sswitch_9
    const-wide v4, 0x2000000800L

    const-wide/16 v8, 0x0

    move-object v1, p0

    move-wide v2, v11

    move-wide v6, v13

    invoke-direct/range {v1 .. v9}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa7_0(JJJJ)I

    move-result v0

    return v0

    .line 847
    :sswitch_a
    const-wide v4, 0x8000000000L

    const-wide/16 v8, 0x0

    move-object v1, p0

    move-wide v2, v11

    move-wide v6, v13

    invoke-direct/range {v1 .. v9}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa7_0(JJJJ)I

    move-result v0

    return v0

    .line 885
    :cond_5
    :goto_0
    const/4 v2, 0x5

    const-wide/16 v7, 0x0

    move-object v1, p0

    move-wide v3, v11

    move-wide v5, v13

    invoke-direct/range {v1 .. v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    .line 840
    :catch_0
    move-exception v0

    .line 841
    .local v0, "e":Ljava/io/IOException;
    const/4 v2, 0x5

    const-wide/16 v7, 0x0

    move-object v1, p0

    move-wide v3, v11

    move-wide v5, v13

    invoke-direct/range {v1 .. v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    .line 842
    return v9

    :sswitch_data_0
    .sparse-switch
        0x61 -> :sswitch_a
        0x63 -> :sswitch_9
        0x65 -> :sswitch_8
        0x66 -> :sswitch_7
        0x6c -> :sswitch_6
        0x6e -> :sswitch_5
        0x6f -> :sswitch_4
        0x73 -> :sswitch_3
        0x74 -> :sswitch_2
        0x75 -> :sswitch_1
        0x79 -> :sswitch_0
    .end sparse-switch
.end method

.method private jjMoveStringLiteralDfa7_0(JJJJ)I
    .locals 15
    .param p1, "old0"    # J
    .param p3, "active0"    # J
    .param p5, "old1"    # J
    .param p7, "active1"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "old0",
            "active0",
            "old1",
            "active1"
        }
    .end annotation

    .line 888
    move-object v10, p0

    and-long v0, p3, p1

    move-wide v11, v0

    .end local p3    # "active0":J
    .local v11, "active0":J
    and-long v2, p7, p5

    move-wide v13, v2

    .end local p7    # "active1":J
    .local v13, "active1":J
    or-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 889
    const/4 v2, 0x5

    const-wide/16 v7, 0x0

    move-object v1, p0

    move-wide/from16 v3, p1

    move-wide/from16 v5, p5

    invoke-direct/range {v1 .. v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    .line 890
    :cond_0
    const/4 v9, 0x7

    :try_start_0
    iget-object v0, v10, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->input_stream:Lorg/checkerframework/com/github/javaparser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->readChar()C

    move-result v0

    iput v0, v10, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 894
    nop

    .line 895
    const/16 v1, 0x8d

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 920
    :sswitch_0
    const-wide/16 v4, 0x800

    and-long/2addr v4, v11

    cmp-long v0, v4, v2

    if-eqz v0, :cond_4

    .line 921
    const/16 v0, 0xb

    invoke-direct {p0, v9, v0, v1}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 914
    :sswitch_1
    const-wide/16 v4, 0x2

    and-long/2addr v4, v13

    cmp-long v0, v4, v2

    if-eqz v0, :cond_1

    .line 915
    const/16 v0, 0x41

    invoke-direct {p0, v9, v0, v1}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 916
    :cond_1
    const-wide/16 v4, 0x200

    and-long/2addr v4, v13

    cmp-long v0, v4, v2

    if-eqz v0, :cond_4

    .line 917
    const/16 v0, 0x49

    invoke-direct {p0, v9, v0, v1}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 910
    :sswitch_2
    const-wide/high16 v4, 0x8000000000000L

    and-long/2addr v4, v11

    cmp-long v0, v4, v2

    if-eqz v0, :cond_4

    .line 911
    const/16 v0, 0x33

    invoke-direct {p0, v9, v0, v1}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 908
    :sswitch_3
    const-wide v4, 0x440000800000000L

    const-wide/16 v8, 0x0

    move-object v1, p0

    move-wide v2, v11

    move-wide v6, v13

    invoke-direct/range {v1 .. v9}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa8_0(JJJJ)I

    move-result v0

    return v0

    .line 906
    :sswitch_4
    const-wide/16 v4, 0x0

    const-wide/16 v8, 0x400

    move-object v1, p0

    move-wide v2, v11

    move-wide v6, v13

    invoke-direct/range {v1 .. v9}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa8_0(JJJJ)I

    move-result v0

    return v0

    .line 900
    :sswitch_5
    const-wide/32 v4, 0x200000

    and-long/2addr v4, v11

    cmp-long v0, v4, v2

    if-eqz v0, :cond_2

    .line 901
    const/16 v0, 0x15

    invoke-direct {p0, v9, v0, v1}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 902
    :cond_2
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    and-long/2addr v4, v11

    cmp-long v0, v4, v2

    if-eqz v0, :cond_3

    .line 903
    const/16 v0, 0x3e

    invoke-direct {p0, v9, v0, v1}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 904
    :cond_3
    const-wide v4, 0x402000000000L

    const-wide/16 v8, 0x0

    move-object v1, p0

    move-wide v2, v11

    move-wide v6, v13

    invoke-direct/range {v1 .. v9}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa8_0(JJJJ)I

    move-result v0

    return v0

    .line 898
    :sswitch_6
    const-wide v4, 0x8000000000L

    const-wide/16 v8, 0x0

    move-object v1, p0

    move-wide v2, v11

    move-wide v6, v13

    invoke-direct/range {v1 .. v9}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa8_0(JJJJ)I

    move-result v0

    return v0

    .line 926
    :cond_4
    :goto_0
    const/4 v2, 0x6

    const-wide/16 v7, 0x0

    move-object v1, p0

    move-wide v3, v11

    move-wide v5, v13

    invoke-direct/range {v1 .. v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    .line 891
    :catch_0
    move-exception v0

    .line 892
    .local v0, "e":Ljava/io/IOException;
    const/4 v2, 0x6

    const-wide/16 v7, 0x0

    move-object v1, p0

    move-wide v3, v11

    move-wide v5, v13

    invoke-direct/range {v1 .. v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    .line 893
    return v9

    :sswitch_data_0
    .sparse-switch
        0x63 -> :sswitch_6
        0x65 -> :sswitch_5
        0x69 -> :sswitch_4
        0x6e -> :sswitch_3
        0x70 -> :sswitch_2
        0x73 -> :sswitch_1
        0x74 -> :sswitch_0
    .end sparse-switch
.end method

.method private jjMoveStringLiteralDfa8_0(JJJJ)I
    .locals 20
    .param p1, "old0"    # J
    .param p3, "active0"    # J
    .param p5, "old1"    # J
    .param p7, "active1"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "old0",
            "active0",
            "old1",
            "active1"
        }
    .end annotation

    .line 929
    move-object/from16 v12, p0

    and-long v0, p3, p1

    move-wide/from16 v18, v0

    .end local p3    # "active0":J
    .local v18, "active0":J
    and-long v2, p7, p5

    move-wide v14, v2

    .end local p7    # "active1":J
    .local v14, "active1":J
    or-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 930
    const/4 v2, 0x6

    const-wide/16 v7, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v3, p1

    move-wide/from16 v5, p5

    invoke-direct/range {v1 .. v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    .line 931
    :cond_0
    const/16 v9, 0x8

    :try_start_0
    iget-object v0, v12, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->input_stream:Lorg/checkerframework/com/github/javaparser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->readChar()C

    move-result v0

    iput v0, v12, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 935
    nop

    .line 936
    const/16 v1, 0x8d

    sparse-switch v0, :sswitch_data_0

    move-object v11, v12

    goto/16 :goto_0

    .line 955
    :sswitch_0
    const-wide/16 v0, 0x0

    const-wide/16 v16, 0x400

    move-object/from16 v9, p0

    move-wide/from16 v10, v18

    move-object v8, v12

    move-wide v12, v0

    invoke-direct/range {v9 .. v17}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa9_0(JJJJ)I

    move-result v0

    return v0

    .line 951
    :sswitch_1
    move-object v8, v12

    const-wide/high16 v4, 0x400000000000000L

    and-long v4, v18, v4

    cmp-long v0, v4, v2

    if-eqz v0, :cond_1

    .line 952
    const/16 v0, 0x3a

    invoke-direct {v8, v9, v0, v1}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 953
    :cond_1
    const-wide v4, 0x800000000L

    const-wide/16 v9, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v2, v18

    move-wide v6, v14

    move-object v11, v8

    move-wide v8, v9

    invoke-direct/range {v1 .. v9}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa9_0(JJJJ)I

    move-result v0

    return v0

    .line 949
    :sswitch_2
    move-object v11, v12

    const-wide v4, 0x2000000000L

    const-wide/16 v8, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v2, v18

    move-wide v6, v14

    invoke-direct/range {v1 .. v9}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa9_0(JJJJ)I

    move-result v0

    return v0

    .line 947
    :sswitch_3
    move-object v11, v12

    const-wide/high16 v4, 0x40000000000000L

    const-wide/16 v8, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v2, v18

    move-wide v6, v14

    invoke-direct/range {v1 .. v9}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa9_0(JJJJ)I

    move-result v0

    return v0

    .line 943
    :sswitch_4
    move-object v11, v12

    const-wide v4, 0x8000000000L

    and-long v4, v18, v4

    cmp-long v0, v4, v2

    if-eqz v0, :cond_2

    .line 944
    const/16 v0, 0x27

    invoke-direct {v11, v9, v0, v1}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 939
    :sswitch_5
    move-object v11, v12

    const-wide v4, 0x400000000000L

    and-long v4, v18, v4

    cmp-long v0, v4, v2

    if-eqz v0, :cond_2

    .line 940
    const/16 v0, 0x2e

    invoke-direct {v11, v9, v0, v1}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 959
    :cond_2
    :goto_0
    const/4 v2, 0x7

    const-wide/16 v7, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v3, v18

    move-wide v5, v14

    invoke-direct/range {v1 .. v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    .line 932
    :catch_0
    move-exception v0

    move-object v11, v12

    .line 933
    .local v0, "e":Ljava/io/IOException;
    const/4 v2, 0x7

    const-wide/16 v7, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v3, v18

    move-wide v5, v14

    invoke-direct/range {v1 .. v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    .line 934
    return v9

    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_5
        0x65 -> :sswitch_4
        0x69 -> :sswitch_3
        0x6f -> :sswitch_2
        0x74 -> :sswitch_1
        0x76 -> :sswitch_0
    .end sparse-switch
.end method

.method private jjMoveStringLiteralDfa9_0(JJJJ)I
    .locals 15
    .param p1, "old0"    # J
    .param p3, "active0"    # J
    .param p5, "old1"    # J
    .param p7, "active1"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "old0",
            "active0",
            "old1",
            "active1"
        }
    .end annotation

    .line 962
    move-object v10, p0

    and-long v0, p3, p1

    move-wide v11, v0

    .end local p3    # "active0":J
    .local v11, "active0":J
    and-long v2, p7, p5

    move-wide v13, v2

    .end local p7    # "active1":J
    .local v13, "active1":J
    or-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 963
    const/4 v2, 0x7

    const-wide/16 v7, 0x0

    move-object v1, p0

    move-wide/from16 v3, p1

    move-wide/from16 v5, p5

    invoke-direct/range {v1 .. v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    .line 964
    :cond_0
    const/16 v9, 0x9

    :try_start_0
    iget-object v0, v10, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->input_stream:Lorg/checkerframework/com/github/javaparser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->readChar()C

    move-result v0

    iput v0, v10, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 968
    nop

    .line 969
    const/16 v1, 0x8d

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 984
    :sswitch_0
    const-wide/high16 v4, 0x40000000000000L

    const-wide/16 v8, 0x0

    move-object v1, p0

    move-wide v2, v11

    move-wide v6, v13

    invoke-direct/range {v1 .. v9}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa10_0(JJJJ)I

    move-result v0

    return v0

    .line 980
    :sswitch_1
    const-wide v4, 0x800000000L

    and-long/2addr v4, v11

    cmp-long v0, v4, v2

    if-eqz v0, :cond_1

    .line 981
    const/16 v0, 0x23

    invoke-direct {p0, v9, v0, v1}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 976
    :sswitch_2
    const-wide v4, 0x2000000000L

    and-long/2addr v4, v11

    cmp-long v0, v4, v2

    if-eqz v0, :cond_1

    .line 977
    const/16 v0, 0x25

    invoke-direct {p0, v9, v0, v1}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 972
    :sswitch_3
    const-wide/16 v4, 0x400

    and-long/2addr v4, v13

    cmp-long v0, v4, v2

    if-eqz v0, :cond_1

    .line 973
    const/16 v0, 0x4a

    invoke-direct {p0, v9, v0, v1}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 988
    :cond_1
    :goto_0
    const/16 v2, 0x8

    const-wide/16 v7, 0x0

    move-object v1, p0

    move-wide v3, v11

    move-wide v5, v13

    invoke-direct/range {v1 .. v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    .line 965
    :catch_0
    move-exception v0

    .line 966
    .local v0, "e":Ljava/io/IOException;
    const/16 v2, 0x8

    const-wide/16 v7, 0x0

    move-object v1, p0

    move-wide v3, v11

    move-wide v5, v13

    invoke-direct/range {v1 .. v8}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    .line 967
    return v9

    :sswitch_data_0
    .sparse-switch
        0x65 -> :sswitch_3
        0x66 -> :sswitch_2
        0x73 -> :sswitch_1
        0x7a -> :sswitch_0
    .end sparse-switch
.end method

.method private jjStartNfaWithStates_0(III)I
    .locals 2
    .param p1, "pos"    # I
    .param p2, "kind"    # I
    .param p3, "state"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pos",
            "kind",
            "state"
        }
    .end annotation

    .line 1028
    iput p2, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    .line 1029
    iput p1, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedPos:I

    .line 1030
    :try_start_0
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->input_stream:Lorg/checkerframework/com/github/javaparser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->readChar()C

    move-result v0

    iput v0, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1031
    nop

    .line 1032
    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, p3, v0}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveNfa_0(II)I

    move-result v0

    return v0

    .line 1031
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    add-int/lit8 v1, p1, 0x1

    return v1
.end method

.method private final jjStartNfa_0(IJJJ)I
    .locals 2
    .param p1, "pos"    # I
    .param p2, "active0"    # J
    .param p4, "active1"    # J
    .param p6, "active2"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pos",
            "active0",
            "active1",
            "active2"
        }
    .end annotation

    .line 267
    invoke-direct/range {p0 .. p7}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveNfa_0(II)I

    move-result v0

    return v0
.end method

.method private final jjStartNfa_3(IJJ)I
    .locals 2
    .param p1, "pos"    # I
    .param p2, "active0"    # J
    .param p4, "active1"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pos",
            "active0",
            "active1"
        }
    .end annotation

    .line 2399
    invoke-direct/range {p0 .. p5}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjStopStringLiteralDfa_3(IJJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveNfa_3(II)I

    move-result v0

    return v0
.end method

.method private jjStopAtPos(II)I
    .locals 1
    .param p1, "pos"    # I
    .param p2, "kind"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pos",
            "kind"
        }
    .end annotation

    .line 271
    iput p2, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    .line 272
    iput p1, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedPos:I

    .line 273
    add-int/lit8 v0, p1, 0x1

    return v0
.end method

.method private final jjStopStringLiteralDfa_0(IJJJ)I
    .locals 19
    .param p1, "pos"    # I
    .param p2, "active0"    # J
    .param p4, "active1"    # J
    .param p6, "active2"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pos",
            "active0",
            "active1",
            "active2"
        }
    .end annotation

    .line 117
    move-object/from16 v0, p0

    const/16 v1, 0x59

    const-wide/16 v2, 0x7fb

    const-wide/high16 v4, 0x40000000000000L

    const-wide/16 v6, 0x400

    const/4 v8, 0x2

    const-wide/32 v9, 0x4000000

    const-wide/16 v11, 0x80

    const/4 v13, 0x1

    const/16 v14, 0x5d

    const/4 v15, -0x1

    const/16 v16, 0x8d

    const-wide/16 v17, 0x0

    packed-switch p1, :pswitch_data_0

    .line 263
    return v15

    .line 255
    :pswitch_0
    and-long v1, p2, v4

    cmp-long v1, v1, v17

    if-eqz v1, :cond_0

    .line 257
    iput v14, v0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    .line 258
    const/16 v1, 0xa

    iput v1, v0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedPos:I

    .line 259
    return v16

    .line 261
    :cond_0
    return v15

    .line 245
    :pswitch_1
    and-long v1, p2, v4

    cmp-long v1, v1, v17

    if-eqz v1, :cond_1

    .line 247
    iput v14, v0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    .line 248
    const/16 v1, 0x9

    iput v1, v0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedPos:I

    .line 249
    return v16

    .line 251
    :cond_1
    const-wide v1, 0x2800000000L

    and-long v1, p2, v1

    cmp-long v1, v1, v17

    if-nez v1, :cond_3

    and-long v1, p4, v6

    cmp-long v1, v1, v17

    if-eqz v1, :cond_2

    goto :goto_0

    .line 253
    :cond_2
    return v15

    .line 252
    :cond_3
    :goto_0
    return v16

    .line 235
    :pswitch_2
    const-wide v1, 0x400408000000000L

    and-long v1, p2, v1

    cmp-long v1, v1, v17

    if-eqz v1, :cond_4

    .line 236
    return v16

    .line 237
    :cond_4
    const-wide v1, 0x40002800000000L

    and-long v1, p2, v1

    cmp-long v1, v1, v17

    if-nez v1, :cond_6

    and-long v1, p4, v6

    cmp-long v1, v1, v17

    if-eqz v1, :cond_5

    goto :goto_1

    .line 243
    :cond_5
    return v15

    .line 239
    :cond_6
    :goto_1
    iput v14, v0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    .line 240
    const/16 v1, 0x8

    iput v1, v0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedPos:I

    .line 241
    return v16

    .line 225
    :pswitch_3
    const-wide v1, 0x4008000000200800L    # 3.000000000932232

    and-long v1, p2, v1

    cmp-long v1, v1, v17

    if-nez v1, :cond_a

    const-wide/16 v1, 0x202

    and-long v1, p4, v1

    cmp-long v1, v1, v17

    if-eqz v1, :cond_7

    goto :goto_3

    .line 227
    :cond_7
    const-wide v1, 0x44040a800000000L

    and-long v1, p2, v1

    cmp-long v1, v1, v17

    if-nez v1, :cond_9

    and-long v1, p4, v6

    cmp-long v1, v1, v17

    if-eqz v1, :cond_8

    goto :goto_2

    .line 233
    :cond_8
    return v15

    .line 229
    :cond_9
    :goto_2
    iput v14, v0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    .line 230
    const/4 v1, 0x7

    iput v1, v0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedPos:I

    .line 231
    return v16

    .line 226
    :cond_a
    :goto_3
    return v16

    .line 215
    :pswitch_4
    const-wide v1, 0x444840a800200800L    # 8.947616634422344E20

    and-long v1, p2, v1

    cmp-long v1, v1, v17

    if-nez v1, :cond_e

    const-wide/16 v1, 0x602

    and-long v1, p4, v1

    cmp-long v1, v1, v17

    if-eqz v1, :cond_b

    goto :goto_5

    .line 221
    :cond_b
    const-wide v1, 0x300048402000L

    and-long v1, p2, v1

    cmp-long v1, v1, v17

    if-nez v1, :cond_d

    const-wide/16 v1, 0x100

    and-long v1, p4, v1

    cmp-long v1, v1, v17

    if-eqz v1, :cond_c

    goto :goto_4

    .line 223
    :cond_c
    return v15

    .line 222
    :cond_d
    :goto_4
    return v16

    .line 217
    :cond_e
    :goto_5
    iput v14, v0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    .line 218
    const/4 v1, 0x6

    iput v1, v0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedPos:I

    .line 219
    return v16

    .line 205
    :pswitch_5
    const-wide v1, 0x225821001001000L

    and-long v1, p2, v1

    cmp-long v1, v1, v17

    if-nez v1, :cond_12

    and-long v1, p4, v11

    cmp-long v1, v1, v17

    if-eqz v1, :cond_f

    goto :goto_7

    .line 207
    :cond_f
    const-wide v1, 0x444870a848602800L    # 9.016793513503794E20

    and-long v1, p2, v1

    cmp-long v1, v1, v17

    if-nez v1, :cond_11

    const-wide/16 v1, 0x702

    and-long v1, p4, v1

    cmp-long v1, v1, v17

    if-eqz v1, :cond_10

    goto :goto_6

    .line 213
    :cond_10
    return v15

    .line 209
    :cond_11
    :goto_6
    iput v14, v0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    .line 210
    const/4 v1, 0x5

    iput v1, v0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedPos:I

    .line 211
    return v16

    .line 206
    :cond_12
    :goto_7
    return v16

    .line 192
    :pswitch_6
    const-wide v1, -0x7cedffff0fe5c000L    # -7.045909992630655E-294

    and-long v1, p2, v1

    cmp-long v1, v1, v17

    if-nez v1, :cond_17

    const-wide/16 v1, 0x21

    and-long v1, p4, v1

    cmp-long v1, v1, v17

    if-eqz v1, :cond_13

    goto :goto_9

    .line 194
    :cond_13
    const-wide v1, 0x446df2b809603800L    # 4.419562540794651E21

    and-long v1, p2, v1

    cmp-long v1, v1, v17

    if-nez v1, :cond_15

    const-wide/16 v1, 0x782

    and-long v1, p4, v1

    cmp-long v1, v1, v17

    if-eqz v1, :cond_14

    goto :goto_8

    .line 203
    :cond_14
    return v15

    .line 196
    :cond_15
    :goto_8
    iget v1, v0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedPos:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_16

    .line 198
    iput v14, v0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    .line 199
    iput v2, v0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedPos:I

    .line 201
    :cond_16
    return v16

    .line 193
    :cond_17
    :goto_9
    return v16

    .line 179
    :pswitch_7
    const-wide v1, -0x38800d4706858800L    # -2.654147214886225E36

    and-long v1, p2, v1

    cmp-long v1, v1, v17

    if-nez v1, :cond_1b

    const-wide/16 v1, 0x783

    and-long v1, p4, v1

    cmp-long v1, v1, v17

    if-eqz v1, :cond_18

    goto :goto_b

    .line 188
    :cond_18
    const-wide v1, 0x2880090206058000L

    and-long v1, p2, v1

    cmp-long v1, v1, v17

    if-nez v1, :cond_1a

    const-wide/16 v1, 0x78

    and-long v1, p4, v1

    cmp-long v1, v1, v17

    if-eqz v1, :cond_19

    goto :goto_a

    .line 190
    :cond_19
    return v15

    .line 189
    :cond_1a
    :goto_a
    return v16

    .line 181
    :cond_1b
    :goto_b
    iget v1, v0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedPos:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1c

    .line 183
    iput v14, v0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    .line 184
    iput v2, v0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedPos:I

    .line 186
    :cond_1c
    return v16

    .line 157
    :pswitch_8
    and-long v4, p4, v9

    cmp-long v4, v4, v17

    if-eqz v4, :cond_1e

    .line 159
    iget v2, v0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedPos:I

    if-ge v2, v13, :cond_1d

    .line 161
    iput v1, v0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    .line 162
    iput v13, v0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedPos:I

    .line 164
    :cond_1d
    return v15

    .line 166
    :cond_1e
    const-wide v4, -0x100004c500800800L    # -3.1032283732232237E231

    and-long v4, p2, v4

    cmp-long v1, v4, v17

    if-nez v1, :cond_21

    and-long v1, p4, v2

    cmp-long v1, v1, v17

    if-eqz v1, :cond_1f

    goto :goto_c

    .line 175
    :cond_1f
    const-wide v1, 0x100004c100000000L

    and-long v1, p2, v1

    cmp-long v1, v1, v17

    if-eqz v1, :cond_20

    .line 176
    return v16

    .line 177
    :cond_20
    return v15

    .line 168
    :cond_21
    :goto_c
    iget v1, v0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedPos:I

    if-eq v1, v8, :cond_22

    .line 170
    iput v14, v0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    .line 171
    iput v8, v0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedPos:I

    .line 173
    :cond_22
    return v16

    .line 133
    :pswitch_9
    and-long v4, p2, v11

    cmp-long v4, v4, v17

    if-eqz v4, :cond_23

    .line 134
    const/16 v1, 0x3a

    return v1

    .line 135
    :cond_23
    and-long v4, p4, v9

    cmp-long v4, v4, v17

    if-eqz v4, :cond_25

    .line 137
    iget v2, v0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedPos:I

    if-eq v2, v13, :cond_24

    .line 139
    iput v1, v0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    .line 140
    iput v13, v0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedPos:I

    .line 142
    :cond_24
    return v15

    .line 144
    :cond_25
    const-wide v4, 0x401800000L

    and-long v4, p2, v4

    cmp-long v1, v4, v17

    if-nez v1, :cond_2a

    const-wide/16 v4, 0x4

    and-long v4, p4, v4

    cmp-long v1, v4, v17

    if-eqz v1, :cond_26

    goto :goto_e

    .line 146
    :cond_26
    const-wide v4, -0x401800800L

    and-long v4, p2, v4

    cmp-long v1, v4, v17

    if-nez v1, :cond_28

    and-long v1, p4, v2

    cmp-long v1, v1, v17

    if-eqz v1, :cond_27

    goto :goto_d

    .line 155
    :cond_27
    return v15

    .line 148
    :cond_28
    :goto_d
    iget v1, v0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedPos:I

    if-eq v1, v13, :cond_29

    .line 150
    iput v14, v0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    .line 151
    iput v13, v0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedPos:I

    .line 153
    :cond_29
    return v16

    .line 145
    :cond_2a
    :goto_e
    return v16

    .line 120
    :pswitch_a
    const-wide/16 v1, -0x800

    and-long v1, p2, v1

    cmp-long v1, v1, v17

    if-nez v1, :cond_31

    const-wide/16 v1, 0x7ff

    and-long v1, p4, v1

    cmp-long v1, v1, v17

    if-eqz v1, :cond_2b

    goto :goto_11

    .line 125
    :cond_2b
    const-wide v1, 0x10000000000L

    and-long v1, p4, v1

    cmp-long v1, v1, v17

    if-nez v1, :cond_30

    const-wide/16 v1, 0x1000

    and-long v1, p6, v1

    cmp-long v1, v1, v17

    if-eqz v1, :cond_2c

    goto :goto_10

    .line 127
    :cond_2c
    and-long v1, p2, v11

    cmp-long v1, v1, v17

    if-nez v1, :cond_2f

    const-wide/high16 v1, 0x800000000000000L

    and-long v1, p4, v1

    cmp-long v1, v1, v17

    if-nez v1, :cond_2f

    const-wide/16 v1, 0x10

    and-long v1, p6, v1

    cmp-long v1, v1, v17

    if-eqz v1, :cond_2d

    goto :goto_f

    .line 129
    :cond_2d
    and-long v1, p4, v9

    cmp-long v1, v1, v17

    if-eqz v1, :cond_2e

    .line 130
    const/16 v1, 0x8e

    return v1

    .line 131
    :cond_2e
    return v15

    .line 128
    :cond_2f
    :goto_f
    const/16 v1, 0x38

    return v1

    .line 126
    :cond_30
    :goto_10
    return v8

    .line 122
    :cond_31
    :goto_11
    iput v14, v0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    .line 123
    return v16

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final jjStopStringLiteralDfa_3(IJJ)I
    .locals 6
    .param p1, "pos"    # I
    .param p2, "active0"    # J
    .param p4, "active1"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pos",
            "active0",
            "active1"
        }
    .end annotation

    .line 2374
    const/16 v0, 0x5c

    const-wide/16 v1, 0x0

    const-wide/32 v3, 0x8000000

    const/4 v5, -0x1

    packed-switch p1, :pswitch_data_0

    .line 2395
    return v5

    .line 2384
    :pswitch_0
    and-long/2addr v3, p4

    cmp-long v1, v3, v1

    if-eqz v1, :cond_1

    .line 2386
    iget v1, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedPos:I

    if-nez v1, :cond_0

    .line 2388
    iput v0, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    .line 2389
    const/4 v0, 0x0

    iput v0, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedPos:I

    .line 2391
    :cond_0
    return v5

    .line 2393
    :cond_1
    return v5

    .line 2377
    :pswitch_1
    and-long/2addr v3, p4

    cmp-long v1, v3, v1

    if-eqz v1, :cond_2

    .line 2379
    iput v0, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    .line 2380
    return v5

    .line 2382
    :cond_2
    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method MoreLexicalActions()V
    .locals 4

    .line 3018
    iget v0, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjimageLen:I

    iget v1, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedPos:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->lengthOfMatch:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjimageLen:I

    .line 3019
    iget v1, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 3022
    :pswitch_0
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->image:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->input_stream:Lorg/checkerframework/com/github/javaparser/SimpleCharStream;

    invoke-virtual {v3, v0}, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 3023
    const/4 v0, 0x0

    iput v0, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjimageLen:I

    .line 3024
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->input_stream:Lorg/checkerframework/com/github/javaparser/SimpleCharStream;

    invoke-virtual {v0, v2}, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->backup(I)V

    .line 3025
    nop

    .line 3029
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public ReInit(Lorg/checkerframework/com/github/javaparser/SimpleCharStream;)V
    .locals 1
    .param p1, "stream"    # Lorg/checkerframework/com/github/javaparser/SimpleCharStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stream"
        }
    .end annotation

    .line 3105
    const/4 v0, 0x0

    iput v0, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    iput v0, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedPos:I

    .line 3108
    iget v0, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->defaultLexState:I

    iput v0, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->curLexState:I

    .line 3109
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->input_stream:Lorg/checkerframework/com/github/javaparser/SimpleCharStream;

    .line 3110
    invoke-direct {p0}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->ReInitRounds()V

    .line 3111
    return-void
.end method

.method public ReInit(Lorg/checkerframework/com/github/javaparser/SimpleCharStream;I)V
    .locals 0
    .param p1, "stream"    # Lorg/checkerframework/com/github/javaparser/SimpleCharStream;
    .param p2, "lexState"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "stream",
            "lexState"
        }
    .end annotation

    .line 3125
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->ReInit(Lorg/checkerframework/com/github/javaparser/SimpleCharStream;)V

    .line 3126
    invoke-virtual {p0, p2}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->SwitchTo(I)V

    .line 3127
    return-void
.end method

.method SkipLexicalActions(Lorg/checkerframework/com/github/javaparser/Token;)V
    .locals 0
    .param p1, "matchedToken"    # Lorg/checkerframework/com/github/javaparser/Token;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "matchedToken"
        }
    .end annotation

    .line 3010
    nop

    .line 3015
    return-void
.end method

.method public SwitchTo(I)V
    .locals 3
    .param p1, "lexState"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lexState"
        }
    .end annotation

    .line 3132
    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    if-ltz p1, :cond_0

    .line 3135
    iput p1, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->curLexState:I

    .line 3136
    return-void

    .line 3133
    :cond_0
    new-instance v0, Lorg/checkerframework/com/github/javaparser/TokenMgrException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: Ignoring invalid lexical state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". State unchanged."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/com/github/javaparser/TokenMgrException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method TokenLexicalActions(Lorg/checkerframework/com/github/javaparser/Token;)V
    .locals 5
    .param p1, "matchedToken"    # Lorg/checkerframework/com/github/javaparser/Token;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "matchedToken"
        }
    .end annotation

    .line 3032
    iget v0, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    const/16 v1, 0x91

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 3047
    :sswitch_0
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->image:Ljava/lang/StringBuilder;

    sget-object v2, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    const/16 v3, 0x90

    aget-object v4, v2, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3048
    aget-object v0, v2, v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->lengthOfMatch:I

    .line 3049
    iput v1, p1, Lorg/checkerframework/com/github/javaparser/Token;->kind:I

    .line 3050
    iput v3, p1, Lorg/checkerframework/com/github/javaparser/Token;->realKind:I

    .line 3051
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->input_stream:Lorg/checkerframework/com/github/javaparser/SimpleCharStream;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->backup(I)V

    .line 3052
    goto :goto_0

    .line 3040
    :sswitch_1
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->image:Ljava/lang/StringBuilder;

    sget-object v2, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    const/16 v3, 0x8f

    aget-object v4, v2, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3041
    aget-object v0, v2, v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->lengthOfMatch:I

    .line 3042
    iput v1, p1, Lorg/checkerframework/com/github/javaparser/Token;->kind:I

    .line 3043
    iput v3, p1, Lorg/checkerframework/com/github/javaparser/Token;->realKind:I

    .line 3044
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->input_stream:Lorg/checkerframework/com/github/javaparser/SimpleCharStream;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->backup(I)V

    .line 3045
    goto :goto_0

    .line 3035
    :sswitch_2
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->image:Ljava/lang/StringBuilder;

    sget-object v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    const/16 v2, 0x40

    aget-object v3, v1, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3036
    aget-object v0, v1, v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->lengthOfMatch:I

    .line 3037
    iget-boolean v0, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->yieldSupported:Z

    if-nez v0, :cond_0

    const/16 v0, 0x5d

    iput v0, p1, Lorg/checkerframework/com/github/javaparser/Token;->kind:I

    .line 3056
    :cond_0
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x40 -> :sswitch_2
        0x8f -> :sswitch_1
        0x90 -> :sswitch_0
    .end sparse-switch
.end method

.method getCommentsCollection()Lorg/checkerframework/com/github/javaparser/ast/comments/CommentsCollection;
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->commentsCollection:Lorg/checkerframework/com/github/javaparser/ast/comments/CommentsCollection;

    return-object v0
.end method

.method getHomeToken()Lorg/checkerframework/com/github/javaparser/JavaToken;
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->homeToken:Lorg/checkerframework/com/github/javaparser/JavaToken;

    return-object v0
.end method

.method public getNextToken()Lorg/checkerframework/com/github/javaparser/Token;
    .locals 19

    .line 2882
    move-object/from16 v1, p0

    const-string v2, ""

    const/4 v0, 0x0

    .line 2884
    .local v0, "specialToken":Lorg/checkerframework/com/github/javaparser/Token;
    const/4 v3, 0x0

    move v4, v3

    move-object v3, v0

    .line 2891
    .end local v0    # "specialToken":Lorg/checkerframework/com/github/javaparser/Token;
    .local v3, "specialToken":Lorg/checkerframework/com/github/javaparser/Token;
    .local v4, "curPos":I
    :cond_0
    :goto_0
    const/4 v5, -0x1

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->input_stream:Lorg/checkerframework/com/github/javaparser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->BeginToken()C

    move-result v0

    iput v0, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 2901
    nop

    .line 2902
    iget-object v0, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjimage:Ljava/lang/StringBuilder;

    iput-object v0, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->image:Ljava/lang/StringBuilder;

    .line 2903
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2904
    iput v6, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjimageLen:I

    .line 2908
    :goto_1
    iget v0, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->curLexState:I

    const/16 v7, 0xa

    const v8, 0x7fffffff

    packed-switch v0, :pswitch_data_0

    goto :goto_3

    .line 2934
    :pswitch_0
    iput v8, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    .line 2935
    iput v6, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedPos:I

    .line 2936
    invoke-direct/range {p0 .. p0}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa0_3()I

    move-result v0

    move v4, v0

    .end local v4    # "curPos":I
    .local v0, "curPos":I
    goto :goto_3

    .line 2925
    .end local v0    # "curPos":I
    .restart local v4    # "curPos":I
    :pswitch_1
    iput v8, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    .line 2926
    iput v6, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedPos:I

    .line 2927
    invoke-direct/range {p0 .. p0}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa0_2()I

    move-result v0

    .line 2928
    .end local v4    # "curPos":I
    .restart local v0    # "curPos":I
    iget v4, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedPos:I

    if-nez v4, :cond_1

    iget v4, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    if-le v4, v7, :cond_1

    .line 2930
    iput v7, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    goto :goto_2

    .line 2916
    .end local v0    # "curPos":I
    .restart local v4    # "curPos":I
    :pswitch_2
    iput v8, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    .line 2917
    iput v6, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedPos:I

    .line 2918
    invoke-direct/range {p0 .. p0}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa0_1()I

    move-result v0

    .line 2919
    .end local v4    # "curPos":I
    .restart local v0    # "curPos":I
    iget v4, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedPos:I

    if-nez v4, :cond_1

    iget v4, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    if-le v4, v7, :cond_1

    .line 2921
    iput v7, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    .line 2939
    :cond_1
    :goto_2
    move v4, v0

    goto :goto_3

    .line 2911
    .end local v0    # "curPos":I
    .restart local v4    # "curPos":I
    :pswitch_3
    iput v8, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    .line 2912
    iput v6, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedPos:I

    .line 2913
    invoke-direct/range {p0 .. p0}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa0_0()I

    move-result v0

    .line 2914
    .end local v4    # "curPos":I
    .restart local v0    # "curPos":I
    move v4, v0

    .line 2939
    .end local v0    # "curPos":I
    .restart local v4    # "curPos":I
    :goto_3
    iget v0, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    const/4 v9, 0x1

    if-eq v0, v8, :cond_9

    .line 2941
    iget v0, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v10, v0, 0x1

    if-ge v10, v4, :cond_2

    .line 2942
    iget-object v10, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->input_stream:Lorg/checkerframework/com/github/javaparser/SimpleCharStream;

    sub-int v0, v4, v0

    sub-int/2addr v0, v9

    invoke-virtual {v10, v0}, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->backup(I)V

    .line 2943
    :cond_2
    sget-object v0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjtoToken:[J

    iget v10, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    shr-int/lit8 v11, v10, 0x6

    aget-wide v11, v0, v11

    and-int/lit8 v0, v10, 0x3f

    const-wide/16 v13, 0x1

    shl-long v15, v13, v0

    and-long/2addr v11, v15

    const-wide/16 v15, 0x0

    cmp-long v0, v11, v15

    if-eqz v0, :cond_4

    .line 2945
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjFillToken()Lorg/checkerframework/com/github/javaparser/Token;

    move-result-object v0

    .line 2946
    .local v0, "matchedToken":Lorg/checkerframework/com/github/javaparser/Token;
    iput-object v3, v0, Lorg/checkerframework/com/github/javaparser/Token;->specialToken:Lorg/checkerframework/com/github/javaparser/Token;

    .line 2947
    invoke-virtual {v1, v0}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->TokenLexicalActions(Lorg/checkerframework/com/github/javaparser/Token;)V

    .line 2948
    sget-object v2, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewLexState:[I

    iget v6, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    aget v2, v2, v6

    if-eq v2, v5, :cond_3

    .line 2949
    iput v2, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->curLexState:I

    .line 2950
    :cond_3
    invoke-direct {v1, v0}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->CommonTokenAction(Lorg/checkerframework/com/github/javaparser/Token;)V

    .line 2951
    return-object v0

    .line 2953
    .end local v0    # "matchedToken":Lorg/checkerframework/com/github/javaparser/Token;
    :cond_4
    sget-object v0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjtoSkip:[J

    shr-int/lit8 v11, v10, 0x6

    aget-wide v11, v0, v11

    and-int/lit8 v0, v10, 0x3f

    shl-long v17, v13, v0

    and-long v11, v11, v17

    cmp-long v0, v11, v15

    if-eqz v0, :cond_7

    .line 2955
    sget-object v0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjtoSpecial:[J

    shr-int/lit8 v6, v10, 0x6

    aget-wide v6, v0, v6

    and-int/lit8 v0, v10, 0x3f

    shl-long v8, v13, v0

    and-long/2addr v6, v8

    cmp-long v0, v6, v15

    if-eqz v0, :cond_6

    .line 2957
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjFillToken()Lorg/checkerframework/com/github/javaparser/Token;

    move-result-object v0

    .line 2958
    .restart local v0    # "matchedToken":Lorg/checkerframework/com/github/javaparser/Token;
    if-nez v3, :cond_5

    .line 2959
    move-object v3, v0

    goto :goto_4

    .line 2962
    :cond_5
    iput-object v3, v0, Lorg/checkerframework/com/github/javaparser/Token;->specialToken:Lorg/checkerframework/com/github/javaparser/Token;

    .line 2963
    iput-object v0, v3, Lorg/checkerframework/com/github/javaparser/Token;->next:Lorg/checkerframework/com/github/javaparser/Token;

    move-object v3, v0

    .line 2965
    :goto_4
    invoke-virtual {v1, v0}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->SkipLexicalActions(Lorg/checkerframework/com/github/javaparser/Token;)V

    goto :goto_5

    .line 2968
    .end local v0    # "matchedToken":Lorg/checkerframework/com/github/javaparser/Token;
    :cond_6
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->SkipLexicalActions(Lorg/checkerframework/com/github/javaparser/Token;)V

    .line 2969
    :goto_5
    sget-object v0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewLexState:[I

    iget v6, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    aget v0, v0, v6

    if-eq v0, v5, :cond_0

    .line 2970
    iput v0, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->curLexState:I

    goto/16 :goto_0

    .line 2973
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->MoreLexicalActions()V

    .line 2974
    sget-object v0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjnewLexState:[I

    iget v10, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    aget v0, v0, v10

    if-eq v0, v5, :cond_8

    .line 2975
    iput v0, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->curLexState:I

    .line 2976
    :cond_8
    const/4 v4, 0x0

    .line 2977
    iput v8, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    .line 2979
    :try_start_1
    iget-object v0, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->input_stream:Lorg/checkerframework/com/github/javaparser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->readChar()C

    move-result v0

    iput v0, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2980
    goto/16 :goto_1

    .line 2982
    :catch_0
    move-exception v0

    .line 2984
    :cond_9
    iget-object v0, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->input_stream:Lorg/checkerframework/com/github/javaparser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->getEndLine()I

    move-result v5

    .line 2985
    .local v5, "error_line":I
    iget-object v0, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->input_stream:Lorg/checkerframework/com/github/javaparser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->getEndColumn()I

    move-result v6

    .line 2986
    .local v6, "error_column":I
    const/4 v8, 0x0

    .line 2987
    .local v8, "error_after":Ljava/lang/String;
    const/4 v10, 0x0

    .line 2988
    .local v10, "EOFSeen":Z
    :try_start_2
    iget-object v0, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->input_stream:Lorg/checkerframework/com/github/javaparser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->readChar()C

    iget-object v0, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->input_stream:Lorg/checkerframework/com/github/javaparser/SimpleCharStream;

    invoke-virtual {v0, v9}, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->backup(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2998
    goto :goto_8

    .line 2989
    :catch_1
    move-exception v0

    .line 2990
    .local v0, "e1":Ljava/io/IOException;
    const/4 v10, 0x1

    .line 2991
    if-gt v4, v9, :cond_a

    move-object v11, v2

    goto :goto_6

    :cond_a
    iget-object v11, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->input_stream:Lorg/checkerframework/com/github/javaparser/SimpleCharStream;

    invoke-virtual {v11}, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v11

    :goto_6
    move-object v8, v11

    .line 2992
    iget v11, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    if-eq v11, v7, :cond_c

    const/16 v7, 0xd

    if-ne v11, v7, :cond_b

    goto :goto_7

    .line 2997
    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 2993
    :cond_c
    :goto_7
    add-int/lit8 v5, v5, 0x1

    .line 2994
    const/4 v6, 0x0

    .line 2999
    .end local v0    # "e1":Ljava/io/IOException;
    :goto_8
    if-nez v10, :cond_e

    .line 3000
    iget-object v0, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->input_stream:Lorg/checkerframework/com/github/javaparser/SimpleCharStream;

    invoke-virtual {v0, v9}, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->backup(I)V

    .line 3001
    if-gt v4, v9, :cond_d

    goto :goto_9

    :cond_d
    iget-object v0, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->input_stream:Lorg/checkerframework/com/github/javaparser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v2

    :goto_9
    move-object v8, v2

    .line 3003
    :cond_e
    new-instance v0, Lorg/checkerframework/com/github/javaparser/TokenMgrException;

    iget v13, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->curLexState:I

    iget v2, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    const/16 v18, 0x0

    move-object v11, v0

    move v12, v10

    move v14, v5

    move v15, v6

    move-object/from16 v16, v8

    move/from16 v17, v2

    invoke-direct/range {v11 .. v18}, Lorg/checkerframework/com/github/javaparser/TokenMgrException;-><init>(ZIIILjava/lang/String;II)V

    throw v0

    .line 2893
    .end local v5    # "error_line":I
    .end local v6    # "error_column":I
    .end local v8    # "error_after":Ljava/lang/String;
    .end local v10    # "EOFSeen":Z
    :catch_2
    move-exception v0

    .line 2895
    .local v0, "e":Ljava/lang/Exception;
    iput v6, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    .line 2896
    iput v5, v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedPos:I

    .line 2897
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjFillToken()Lorg/checkerframework/com/github/javaparser/Token;

    move-result-object v2

    .line 2898
    .local v2, "matchedToken":Lorg/checkerframework/com/github/javaparser/Token;
    iput-object v3, v2, Lorg/checkerframework/com/github/javaparser/Token;->specialToken:Lorg/checkerframework/com/github/javaparser/Token;

    .line 2899
    invoke-direct {v1, v2}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->CommonTokenAction(Lorg/checkerframework/com/github/javaparser/Token;)V

    .line 2900
    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method getTokens()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/JavaToken;",
            ">;"
        }
    .end annotation

    .line 61
    iget-boolean v0, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->storeTokens:Z

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->tokens:Ljava/util/List;

    return-object v0

    .line 64
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected jjFillToken()Lorg/checkerframework/com/github/javaparser/Token;
    .locals 8

    .line 2590
    sget-object v0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    iget v1, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    aget-object v0, v0, v1

    .line 2591
    .local v0, "im":Ljava/lang/String;
    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->input_stream:Lorg/checkerframework/com/github/javaparser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 2592
    .local v1, "curTokenImage":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->input_stream:Lorg/checkerframework/com/github/javaparser/SimpleCharStream;

    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->getBeginLine()I

    move-result v2

    .line 2593
    .local v2, "beginLine":I
    iget-object v3, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->input_stream:Lorg/checkerframework/com/github/javaparser/SimpleCharStream;

    invoke-virtual {v3}, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->getBeginColumn()I

    move-result v3

    .line 2594
    .local v3, "beginColumn":I
    iget-object v4, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->input_stream:Lorg/checkerframework/com/github/javaparser/SimpleCharStream;

    invoke-virtual {v4}, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->getEndLine()I

    move-result v4

    .line 2595
    .local v4, "endLine":I
    iget-object v5, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->input_stream:Lorg/checkerframework/com/github/javaparser/SimpleCharStream;

    invoke-virtual {v5}, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->getEndColumn()I

    move-result v5

    .line 2596
    .local v5, "endColumn":I
    iget v6, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    invoke-static {v6}, Lorg/checkerframework/com/github/javaparser/Token;->newToken(I)Lorg/checkerframework/com/github/javaparser/Token;

    move-result-object v6

    .line 2597
    .local v6, "t":Lorg/checkerframework/com/github/javaparser/Token;
    iget v7, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    iput v7, v6, Lorg/checkerframework/com/github/javaparser/Token;->kind:I

    .line 2598
    iput-object v1, v6, Lorg/checkerframework/com/github/javaparser/Token;->image:Ljava/lang/String;

    .line 2600
    iput v2, v6, Lorg/checkerframework/com/github/javaparser/Token;->beginLine:I

    .line 2601
    iput v4, v6, Lorg/checkerframework/com/github/javaparser/Token;->endLine:I

    .line 2602
    iput v3, v6, Lorg/checkerframework/com/github/javaparser/Token;->beginColumn:I

    .line 2603
    iput v5, v6, Lorg/checkerframework/com/github/javaparser/Token;->endColumn:I

    .line 2605
    return-object v6
.end method

.method reset()V
    .locals 1

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->tokens:Ljava/util/List;

    .line 56
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/comments/CommentsCollection;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/comments/CommentsCollection;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->commentsCollection:Lorg/checkerframework/com/github/javaparser/ast/comments/CommentsCollection;

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->homeToken:Lorg/checkerframework/com/github/javaparser/JavaToken;

    .line 58
    return-void
.end method

.method public setDebugStream(Ljava/io/PrintStream;)V
    .locals 0
    .param p1, "ds"    # Ljava/io/PrintStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ds"
        }
    .end annotation

    .line 115
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->debugStream:Ljava/io/PrintStream;

    return-void
.end method

.method public setStoreTokens(Z)V
    .locals 0
    .param p1, "storeTokens"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "storeTokens"
        }
    .end annotation

    .line 78
    iput-boolean p1, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->storeTokens:Z

    .line 79
    return-void
.end method

.method public setYieldSupported()V
    .locals 1

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->yieldSupported:Z

    .line 83
    return-void
.end method
