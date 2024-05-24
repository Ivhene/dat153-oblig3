.class public final enum Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;
.super Ljava/lang/Enum;
.source "ParserConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/github/javaparser/ParserConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LanguageLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;

.field public static BLEEDING_EDGE:Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;

.field public static CURRENT:Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;

.field public static final enum JAVA_10:Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;

.field public static final enum JAVA_11:Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;

.field public static final enum JAVA_12:Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;

.field public static final enum JAVA_13:Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;

.field public static final enum JAVA_14:Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;

.field public static final enum JAVA_1_0:Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;

.field public static final enum JAVA_1_1:Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;

.field public static final enum JAVA_1_2:Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;

.field public static final enum JAVA_1_3:Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;

.field public static final enum JAVA_1_4:Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;

.field public static final enum JAVA_5:Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;

.field public static final enum JAVA_6:Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;

.field public static final enum JAVA_7:Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;

.field public static final enum JAVA_8:Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;

.field public static final enum JAVA_9:Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;

.field public static POPULAR:Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;

.field public static RAW:Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;


# instance fields
.field final postProcessor:Lorg/checkerframework/com/github/javaparser/ParseResult$PostProcessor;

.field final validator:Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 52
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator;-><init>()V

    const-string v2, "JAVA_1_0"

    const/4 v3, 0x0

    const/4 v15, 0x0

    invoke-direct {v0, v2, v3, v1, v15}, Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;-><init>(Ljava/lang/String;ILorg/checkerframework/com/github/javaparser/ast/validator/Validator;Lorg/checkerframework/com/github/javaparser/ParseResult$PostProcessor;)V

    sput-object v0, Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;->JAVA_1_0:Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;

    .line 56
    new-instance v1, Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;

    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_1Validator;

    invoke-direct {v2}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_1Validator;-><init>()V

    const-string v3, "JAVA_1_1"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2, v15}, Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;-><init>(Ljava/lang/String;ILorg/checkerframework/com/github/javaparser/ast/validator/Validator;Lorg/checkerframework/com/github/javaparser/ParseResult$PostProcessor;)V

    sput-object v1, Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;->JAVA_1_1:Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;

    .line 60
    new-instance v2, Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_2Validator;

    invoke-direct {v3}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_2Validator;-><init>()V

    const-string v4, "JAVA_1_2"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5, v3, v15}, Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;-><init>(Ljava/lang/String;ILorg/checkerframework/com/github/javaparser/ast/validator/Validator;Lorg/checkerframework/com/github/javaparser/ParseResult$PostProcessor;)V

    sput-object v2, Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;->JAVA_1_2:Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;

    .line 64
    new-instance v3, Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;

    new-instance v4, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_3Validator;

    invoke-direct {v4}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_3Validator;-><init>()V

    const-string v5, "JAVA_1_3"

    const/4 v6, 0x3

    invoke-direct {v3, v5, v6, v4, v15}, Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;-><init>(Ljava/lang/String;ILorg/checkerframework/com/github/javaparser/ast/validator/Validator;Lorg/checkerframework/com/github/javaparser/ParseResult$PostProcessor;)V

    sput-object v3, Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;->JAVA_1_3:Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;

    .line 68
    new-instance v4, Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;

    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_4Validator;

    invoke-direct {v5}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_4Validator;-><init>()V

    const-string v6, "JAVA_1_4"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v7, v5, v15}, Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;-><init>(Ljava/lang/String;ILorg/checkerframework/com/github/javaparser/ast/validator/Validator;Lorg/checkerframework/com/github/javaparser/ParseResult$PostProcessor;)V

    sput-object v4, Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;->JAVA_1_4:Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;

    .line 72
    new-instance v5, Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;

    new-instance v6, Lorg/checkerframework/com/github/javaparser/ast/validator/Java5Validator;

    invoke-direct {v6}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java5Validator;-><init>()V

    const-string v7, "JAVA_5"

    const/4 v8, 0x5

    invoke-direct {v5, v7, v8, v6, v15}, Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;-><init>(Ljava/lang/String;ILorg/checkerframework/com/github/javaparser/ast/validator/Validator;Lorg/checkerframework/com/github/javaparser/ParseResult$PostProcessor;)V

    sput-object v5, Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;->JAVA_5:Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;

    .line 76
    new-instance v6, Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;

    new-instance v7, Lorg/checkerframework/com/github/javaparser/ast/validator/Java6Validator;

    invoke-direct {v7}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java6Validator;-><init>()V

    const-string v8, "JAVA_6"

    const/4 v9, 0x6

    invoke-direct {v6, v8, v9, v7, v15}, Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;-><init>(Ljava/lang/String;ILorg/checkerframework/com/github/javaparser/ast/validator/Validator;Lorg/checkerframework/com/github/javaparser/ParseResult$PostProcessor;)V

    sput-object v6, Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;->JAVA_6:Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;

    .line 80
    new-instance v7, Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;

    new-instance v8, Lorg/checkerframework/com/github/javaparser/ast/validator/Java7Validator;

    invoke-direct {v8}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java7Validator;-><init>()V

    const-string v9, "JAVA_7"

    const/4 v10, 0x7

    invoke-direct {v7, v9, v10, v8, v15}, Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;-><init>(Ljava/lang/String;ILorg/checkerframework/com/github/javaparser/ast/validator/Validator;Lorg/checkerframework/com/github/javaparser/ParseResult$PostProcessor;)V

    sput-object v7, Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;->JAVA_7:Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;

    .line 84
    new-instance v14, Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;

    new-instance v8, Lorg/checkerframework/com/github/javaparser/ast/validator/Java8Validator;

    invoke-direct {v8}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java8Validator;-><init>()V

    const-string v9, "JAVA_8"

    const/16 v10, 0x8

    invoke-direct {v14, v9, v10, v8, v15}, Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;-><init>(Ljava/lang/String;ILorg/checkerframework/com/github/javaparser/ast/validator/Validator;Lorg/checkerframework/com/github/javaparser/ParseResult$PostProcessor;)V

    sput-object v14, Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;->JAVA_8:Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;

    .line 88
    new-instance v9, Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;

    new-instance v8, Lorg/checkerframework/com/github/javaparser/ast/validator/Java9Validator;

    invoke-direct {v8}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java9Validator;-><init>()V

    const-string v10, "JAVA_9"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11, v8, v15}, Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;-><init>(Ljava/lang/String;ILorg/checkerframework/com/github/javaparser/ast/validator/Validator;Lorg/checkerframework/com/github/javaparser/ParseResult$PostProcessor;)V

    sput-object v9, Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;->JAVA_9:Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;

    .line 92
    new-instance v10, Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;

    new-instance v8, Lorg/checkerframework/com/github/javaparser/ast/validator/Java10Validator;

    invoke-direct {v8}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java10Validator;-><init>()V

    new-instance v11, Lorg/checkerframework/com/github/javaparser/version/Java10PostProcessor;

    invoke-direct {v11}, Lorg/checkerframework/com/github/javaparser/version/Java10PostProcessor;-><init>()V

    const-string v12, "JAVA_10"

    const/16 v13, 0xa

    invoke-direct {v10, v12, v13, v8, v11}, Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;-><init>(Ljava/lang/String;ILorg/checkerframework/com/github/javaparser/ast/validator/Validator;Lorg/checkerframework/com/github/javaparser/ParseResult$PostProcessor;)V

    sput-object v10, Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;->JAVA_10:Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;

    .line 96
    new-instance v11, Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;

    new-instance v8, Lorg/checkerframework/com/github/javaparser/ast/validator/Java11Validator;

    invoke-direct {v8}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java11Validator;-><init>()V

    new-instance v12, Lorg/checkerframework/com/github/javaparser/version/Java11PostProcessor;

    invoke-direct {v12}, Lorg/checkerframework/com/github/javaparser/version/Java11PostProcessor;-><init>()V

    const-string v13, "JAVA_11"

    const/16 v15, 0xb

    invoke-direct {v11, v13, v15, v8, v12}, Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;-><init>(Ljava/lang/String;ILorg/checkerframework/com/github/javaparser/ast/validator/Validator;Lorg/checkerframework/com/github/javaparser/ParseResult$PostProcessor;)V

    sput-object v11, Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;->JAVA_11:Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;

    .line 100
    new-instance v12, Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;

    new-instance v8, Lorg/checkerframework/com/github/javaparser/ast/validator/Java12Validator;

    invoke-direct {v8}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java12Validator;-><init>()V

    new-instance v13, Lorg/checkerframework/com/github/javaparser/version/Java12PostProcessor;

    invoke-direct {v13}, Lorg/checkerframework/com/github/javaparser/version/Java12PostProcessor;-><init>()V

    const-string v15, "JAVA_12"

    move-object/from16 v16, v11

    const/16 v11, 0xc

    invoke-direct {v12, v15, v11, v8, v13}, Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;-><init>(Ljava/lang/String;ILorg/checkerframework/com/github/javaparser/ast/validator/Validator;Lorg/checkerframework/com/github/javaparser/ParseResult$PostProcessor;)V

    sput-object v12, Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;->JAVA_12:Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;

    .line 104
    new-instance v15, Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;

    new-instance v8, Lorg/checkerframework/com/github/javaparser/ast/validator/Java13Validator;

    invoke-direct {v8}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java13Validator;-><init>()V

    new-instance v11, Lorg/checkerframework/com/github/javaparser/version/Java13PostProcessor;

    invoke-direct {v11}, Lorg/checkerframework/com/github/javaparser/version/Java13PostProcessor;-><init>()V

    const-string v13, "JAVA_13"

    move-object/from16 v17, v12

    const/16 v12, 0xd

    invoke-direct {v15, v13, v12, v8, v11}, Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;-><init>(Ljava/lang/String;ILorg/checkerframework/com/github/javaparser/ast/validator/Validator;Lorg/checkerframework/com/github/javaparser/ParseResult$PostProcessor;)V

    sput-object v15, Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;->JAVA_13:Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;

    .line 108
    new-instance v13, Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;

    new-instance v8, Lorg/checkerframework/com/github/javaparser/ast/validator/Java14Validator;

    invoke-direct {v8}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java14Validator;-><init>()V

    new-instance v11, Lorg/checkerframework/com/github/javaparser/version/Java14PostProcessor;

    invoke-direct {v11}, Lorg/checkerframework/com/github/javaparser/version/Java14PostProcessor;-><init>()V

    const-string v12, "JAVA_14"

    move-object/from16 v18, v15

    const/16 v15, 0xe

    invoke-direct {v13, v12, v15, v8, v11}, Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;-><init>(Ljava/lang/String;ILorg/checkerframework/com/github/javaparser/ast/validator/Validator;Lorg/checkerframework/com/github/javaparser/ParseResult$PostProcessor;)V

    sput-object v13, Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;->JAVA_14:Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;

    .line 48
    move-object v8, v14

    move-object/from16 v11, v16

    move-object/from16 v12, v17

    move-object v15, v13

    move-object/from16 v13, v18

    move-object/from16 v16, v14

    move-object v14, v15

    filled-new-array/range {v0 .. v14}, [Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;->$VALUES:[Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;

    .line 113
    const/4 v0, 0x0

    sput-object v0, Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;->RAW:Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;

    .line 117
    sput-object v16, Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;->POPULAR:Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;

    .line 121
    sput-object v18, Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;->CURRENT:Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;

    .line 125
    sput-object v15, Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;->BLEEDING_EDGE:Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILorg/checkerframework/com/github/javaparser/ast/validator/Validator;Lorg/checkerframework/com/github/javaparser/ParseResult$PostProcessor;)V
    .locals 0
    .param p3, "validator"    # Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;
    .param p4, "postProcessor"    # Lorg/checkerframework/com/github/javaparser/ParseResult$PostProcessor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "validator",
            "postProcessor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;",
            "Lorg/checkerframework/com/github/javaparser/ParseResult$PostProcessor;",
            ")V"
        }
    .end annotation

    .line 130
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 131
    iput-object p3, p0, Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;->validator:Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;

    .line 132
    iput-object p4, p0, Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;->postProcessor:Lorg/checkerframework/com/github/javaparser/ParseResult$PostProcessor;

    .line 133
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 48
    const-class v0, Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;

    return-object v0
.end method

.method public static values()[Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;
    .locals 1

    .line 48
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;->$VALUES:[Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;

    invoke-virtual {v0}, [Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;

    return-object v0
.end method
