.class public final enum Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;
.super Ljava/lang/Enum;
.source "JavaVersion.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_0_9:Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_10:Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_11:Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_12:Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_13:Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_1_1:Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_1_2:Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_1_3:Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_1_4:Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_1_5:Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_1_6:Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_1_7:Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_1_8:Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_1_9:Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum JAVA_9:Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_RECENT:Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;


# instance fields
.field private final name:Ljava/lang/String;

.field private final value:F


# direct methods
.method static constructor <clinit>()V
    .locals 20

    .line 33
    new-instance v0, Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;

    const-string v1, "0.9"

    const-string v2, "JAVA_0_9"

    const/4 v3, 0x0

    const/high16 v4, 0x3fc00000    # 1.5f

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;->JAVA_0_9:Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;

    .line 38
    new-instance v1, Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;

    const v2, 0x3f8ccccd    # 1.1f

    const-string v3, "1.1"

    const-string v5, "JAVA_1_1"

    const/4 v6, 0x1

    invoke-direct {v1, v5, v6, v2, v3}, Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v1, Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;->JAVA_1_1:Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;

    .line 43
    new-instance v2, Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;

    const v3, 0x3f99999a    # 1.2f

    const-string v5, "1.2"

    const-string v6, "JAVA_1_2"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v3, v5}, Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v2, Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;->JAVA_1_2:Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;

    .line 48
    new-instance v3, Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;

    const v5, 0x3fa66666    # 1.3f

    const-string v6, "1.3"

    const-string v7, "JAVA_1_3"

    const/4 v8, 0x3

    invoke-direct {v3, v7, v8, v5, v6}, Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v3, Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;->JAVA_1_3:Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;

    .line 53
    new-instance v5, Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;

    const v6, 0x3fb33333    # 1.4f

    const-string v7, "1.4"

    const-string v8, "JAVA_1_4"

    const/4 v9, 0x4

    invoke-direct {v5, v8, v9, v6, v7}, Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v5, Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;->JAVA_1_4:Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;

    .line 58
    new-instance v6, Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;

    const/4 v7, 0x5

    const-string v8, "1.5"

    const-string v9, "JAVA_1_5"

    invoke-direct {v6, v9, v7, v4, v8}, Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v6, Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;->JAVA_1_5:Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;

    .line 63
    new-instance v7, Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;

    const v4, 0x3fcccccd    # 1.6f

    const-string v8, "1.6"

    const-string v9, "JAVA_1_6"

    const/4 v10, 0x6

    invoke-direct {v7, v9, v10, v4, v8}, Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v7, Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;->JAVA_1_6:Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;

    .line 68
    new-instance v8, Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;

    const v4, 0x3fd9999a    # 1.7f

    const-string v9, "1.7"

    const-string v10, "JAVA_1_7"

    const/4 v11, 0x7

    invoke-direct {v8, v10, v11, v4, v9}, Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v8, Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;->JAVA_1_7:Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;

    .line 73
    new-instance v9, Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;

    const v4, 0x3fe66666    # 1.8f

    const-string v10, "1.8"

    const-string v11, "JAVA_1_8"

    const/16 v12, 0x8

    invoke-direct {v9, v11, v12, v4, v10}, Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v9, Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;->JAVA_1_8:Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;

    .line 80
    new-instance v10, Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;

    const-string v4, "JAVA_1_9"

    const/16 v11, 0x9

    const/high16 v12, 0x41100000    # 9.0f

    const-string v13, "9"

    invoke-direct {v10, v4, v11, v12, v13}, Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v10, Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;->JAVA_1_9:Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;

    .line 88
    new-instance v11, Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;

    const-string v4, "JAVA_9"

    const/16 v14, 0xa

    invoke-direct {v11, v4, v14, v12, v13}, Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v11, Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;->JAVA_9:Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;

    .line 95
    new-instance v12, Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;

    const/high16 v4, 0x41200000    # 10.0f

    const-string v13, "10"

    const-string v14, "JAVA_10"

    const/16 v15, 0xb

    invoke-direct {v12, v14, v15, v4, v13}, Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v12, Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;->JAVA_10:Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;

    .line 102
    new-instance v13, Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;

    const/high16 v4, 0x41300000    # 11.0f

    const-string v14, "11"

    const-string v15, "JAVA_11"

    move-object/from16 v16, v12

    const/16 v12, 0xc

    invoke-direct {v13, v15, v12, v4, v14}, Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v13, Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;->JAVA_11:Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;

    .line 109
    new-instance v14, Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;

    const/high16 v4, 0x41400000    # 12.0f

    const-string v12, "12"

    const-string v15, "JAVA_12"

    move-object/from16 v17, v13

    const/16 v13, 0xd

    invoke-direct {v14, v15, v13, v4, v12}, Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v14, Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;->JAVA_12:Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;

    .line 116
    new-instance v15, Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;

    const/high16 v4, 0x41500000    # 13.0f

    const-string v12, "13"

    const-string v13, "JAVA_13"

    move-object/from16 v18, v14

    const/16 v14, 0xe

    invoke-direct {v15, v13, v14, v4, v12}, Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v15, Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;->JAVA_13:Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;

    .line 121
    new-instance v14, Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;

    invoke-static {}, Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;->maxVersion()F

    move-result v4

    invoke-static {}, Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;->maxVersion()F

    move-result v12

    invoke-static {v12}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v12

    const-string v13, "JAVA_RECENT"

    move-object/from16 v19, v15

    const/16 v15, 0xf

    invoke-direct {v14, v13, v15, v4, v12}, Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v14, Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;->JAVA_RECENT:Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;

    .line 28
    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v17

    move-object/from16 v13, v18

    move-object v15, v14

    move-object/from16 v14, v19

    filled-new-array/range {v0 .. v15}, [Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;->$VALUES:[Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IFLjava/lang/String;)V
    .locals 0
    .param p3, "value"    # F
    .param p4, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 139
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 140
    iput p3, p0, Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;->value:F

    .line 141
    iput-object p4, p0, Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;->name:Ljava/lang/String;

    .line 142
    return-void
.end method

.method static get(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;
    .locals 6
    .param p0, "nom"    # Ljava/lang/String;

    .line 197
    const-string v0, "0.9"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    sget-object v0, Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;->JAVA_0_9:Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;

    return-object v0

    .line 199
    :cond_0
    const-string v0, "1.1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    sget-object v0, Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;->JAVA_1_1:Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;

    return-object v0

    .line 201
    :cond_1
    const-string v0, "1.2"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 202
    sget-object v0, Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;->JAVA_1_2:Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;

    return-object v0

    .line 203
    :cond_2
    const-string v0, "1.3"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 204
    sget-object v0, Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;->JAVA_1_3:Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;

    return-object v0

    .line 205
    :cond_3
    const-string v0, "1.4"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 206
    sget-object v0, Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;->JAVA_1_4:Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;

    return-object v0

    .line 207
    :cond_4
    const-string v0, "1.5"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 208
    sget-object v0, Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;->JAVA_1_5:Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;

    return-object v0

    .line 209
    :cond_5
    const-string v0, "1.6"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 210
    sget-object v0, Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;->JAVA_1_6:Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;

    return-object v0

    .line 211
    :cond_6
    const-string v0, "1.7"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 212
    sget-object v0, Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;->JAVA_1_7:Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;

    return-object v0

    .line 213
    :cond_7
    const-string v0, "1.8"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 214
    sget-object v0, Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;->JAVA_1_8:Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;

    return-object v0

    .line 215
    :cond_8
    const-string v0, "9"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 216
    sget-object v0, Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;->JAVA_9:Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;

    return-object v0

    .line 217
    :cond_9
    const-string v0, "10"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 218
    sget-object v0, Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;->JAVA_10:Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;

    return-object v0

    .line 219
    :cond_a
    const-string v0, "11"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 220
    sget-object v0, Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;->JAVA_11:Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;

    return-object v0

    .line 221
    :cond_b
    const-string v0, "12"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 222
    sget-object v0, Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;->JAVA_12:Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;

    return-object v0

    .line 223
    :cond_c
    const-string v0, "13"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 224
    sget-object v0, Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;->JAVA_13:Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;

    return-object v0

    .line 226
    :cond_d
    const/4 v0, 0x0

    if-nez p0, :cond_e

    .line 227
    return-object v0

    .line 229
    :cond_e
    invoke-static {p0}, Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;->toFloatVersion(Ljava/lang/String;)F

    move-result v1

    .line 230
    .local v1, "v":F
    float-to-double v2, v1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    cmpg-double v2, v2, v4

    if-gez v2, :cond_10

    .line 231
    const/16 v2, 0x2e

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/16 v3, 0x2c

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 232
    .local v2, "firstComma":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 233
    .local v3, "end":I
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    const v5, 0x3f666666    # 0.9f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_f

    .line 234
    sget-object v0, Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;->JAVA_RECENT:Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;

    return-object v0

    .line 233
    .end local v2    # "firstComma":I
    .end local v3    # "end":I
    :cond_f
    goto :goto_0

    .line 236
    :cond_10
    const/high16 v2, 0x41200000    # 10.0f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_11

    .line 237
    sget-object v0, Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;->JAVA_RECENT:Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;

    return-object v0

    .line 236
    :cond_11
    :goto_0
    nop

    .line 239
    return-object v0
.end method

.method static getJavaVersion(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;
    .locals 1
    .param p0, "nom"    # Ljava/lang/String;

    .line 184
    invoke-static {p0}, Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;->get(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;

    move-result-object v0

    return-object v0
.end method

.method private static maxVersion()F
    .locals 2

    .line 261
    const-string v0, "java.specification.version"

    const-string v1, "99.0"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;->toFloatVersion(Ljava/lang/String;)F

    move-result v0

    .line 262
    .local v0, "v":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 263
    return v0

    .line 265
    :cond_0
    const/high16 v1, 0x42c60000    # 99.0f

    return v1
.end method

.method private static toFloatVersion(Ljava/lang/String;)F
    .locals 5
    .param p0, "value"    # Ljava/lang/String;

    .line 275
    const/4 v0, -0x1

    .line 276
    .local v0, "defaultReturnValue":I
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/high16 v2, -0x40800000    # -1.0f

    if-eqz v1, :cond_1

    .line 277
    const-string v1, "\\."

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 278
    .local v1, "toParse":[Ljava/lang/String;
    array-length v3, v1

    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    .line 279
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lorg/checkerframework/org/apache/commons/lang3/math/NumberUtils;->toFloat(Ljava/lang/String;F)F

    move-result v2

    return v2

    .line 281
    .end local v1    # "toParse":[Ljava/lang/String;
    :cond_0
    nop

    .line 284
    return v2

    .line 282
    :cond_1
    invoke-static {p0, v2}, Lorg/checkerframework/org/apache/commons/lang3/math/NumberUtils;->toFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 28
    const-class v0, Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;

    return-object v0
.end method

.method public static values()[Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;
    .locals 1

    .line 28
    sget-object v0, Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;->$VALUES:[Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;

    invoke-virtual {v0}, [Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;

    return-object v0
.end method


# virtual methods
.method public atLeast(Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;)Z
    .locals 2
    .param p1, "requiredVersion"    # Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;

    .line 155
    iget v0, p0, Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;->value:F

    iget v1, p1, Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;->value:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public atMost(Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;)Z
    .locals 2
    .param p1, "requiredVersion"    # Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;

    .line 170
    iget v0, p0, Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;->value:F

    iget v1, p1, Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;->value:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 252
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/lang3/JavaVersion;->name:Ljava/lang/String;

    return-object v0
.end method
