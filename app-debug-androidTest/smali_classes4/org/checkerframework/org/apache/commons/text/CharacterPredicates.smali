.class public abstract enum Lorg/checkerframework/org/apache/commons/text/CharacterPredicates;
.super Ljava/lang/Enum;
.source "CharacterPredicates.java"

# interfaces
.implements Lorg/checkerframework/org/apache/commons/text/CharacterPredicate;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/checkerframework/org/apache/commons/text/CharacterPredicates;",
        ">;",
        "Lorg/checkerframework/org/apache/commons/text/CharacterPredicate;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/checkerframework/org/apache/commons/text/CharacterPredicates;

.field public static final enum ARABIC_NUMERALS:Lorg/checkerframework/org/apache/commons/text/CharacterPredicates;

.field public static final enum ASCII_ALPHA_NUMERALS:Lorg/checkerframework/org/apache/commons/text/CharacterPredicates;

.field public static final enum ASCII_LETTERS:Lorg/checkerframework/org/apache/commons/text/CharacterPredicates;

.field public static final enum ASCII_LOWERCASE_LETTERS:Lorg/checkerframework/org/apache/commons/text/CharacterPredicates;

.field public static final enum ASCII_UPPERCASE_LETTERS:Lorg/checkerframework/org/apache/commons/text/CharacterPredicates;

.field public static final enum DIGITS:Lorg/checkerframework/org/apache/commons/text/CharacterPredicates;

.field public static final enum LETTERS:Lorg/checkerframework/org/apache/commons/text/CharacterPredicates;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 34
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/CharacterPredicates$1;

    const-string v1, "LETTERS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/org/apache/commons/text/CharacterPredicates$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/org/apache/commons/text/CharacterPredicates;->LETTERS:Lorg/checkerframework/org/apache/commons/text/CharacterPredicates;

    .line 46
    new-instance v1, Lorg/checkerframework/org/apache/commons/text/CharacterPredicates$2;

    const-string v3, "DIGITS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/checkerframework/org/apache/commons/text/CharacterPredicates$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/checkerframework/org/apache/commons/text/CharacterPredicates;->DIGITS:Lorg/checkerframework/org/apache/commons/text/CharacterPredicates;

    .line 58
    new-instance v3, Lorg/checkerframework/org/apache/commons/text/CharacterPredicates$3;

    const-string v5, "ARABIC_NUMERALS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/checkerframework/org/apache/commons/text/CharacterPredicates$3;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/checkerframework/org/apache/commons/text/CharacterPredicates;->ARABIC_NUMERALS:Lorg/checkerframework/org/apache/commons/text/CharacterPredicates;

    .line 70
    new-instance v5, Lorg/checkerframework/org/apache/commons/text/CharacterPredicates$4;

    const-string v7, "ASCII_LOWERCASE_LETTERS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/checkerframework/org/apache/commons/text/CharacterPredicates$4;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/checkerframework/org/apache/commons/text/CharacterPredicates;->ASCII_LOWERCASE_LETTERS:Lorg/checkerframework/org/apache/commons/text/CharacterPredicates;

    .line 82
    new-instance v7, Lorg/checkerframework/org/apache/commons/text/CharacterPredicates$5;

    const-string v9, "ASCII_UPPERCASE_LETTERS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lorg/checkerframework/org/apache/commons/text/CharacterPredicates$5;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/checkerframework/org/apache/commons/text/CharacterPredicates;->ASCII_UPPERCASE_LETTERS:Lorg/checkerframework/org/apache/commons/text/CharacterPredicates;

    .line 94
    new-instance v9, Lorg/checkerframework/org/apache/commons/text/CharacterPredicates$6;

    const-string v11, "ASCII_LETTERS"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lorg/checkerframework/org/apache/commons/text/CharacterPredicates$6;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lorg/checkerframework/org/apache/commons/text/CharacterPredicates;->ASCII_LETTERS:Lorg/checkerframework/org/apache/commons/text/CharacterPredicates;

    .line 106
    new-instance v11, Lorg/checkerframework/org/apache/commons/text/CharacterPredicates$7;

    const-string v13, "ASCII_ALPHA_NUMERALS"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lorg/checkerframework/org/apache/commons/text/CharacterPredicates$7;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lorg/checkerframework/org/apache/commons/text/CharacterPredicates;->ASCII_ALPHA_NUMERALS:Lorg/checkerframework/org/apache/commons/text/CharacterPredicates;

    .line 27
    const/4 v13, 0x7

    new-array v13, v13, [Lorg/checkerframework/org/apache/commons/text/CharacterPredicates;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lorg/checkerframework/org/apache/commons/text/CharacterPredicates;->$VALUES:[Lorg/checkerframework/org/apache/commons/text/CharacterPredicates;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILorg/checkerframework/org/apache/commons/text/CharacterPredicates$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lorg/checkerframework/org/apache/commons/text/CharacterPredicates$1;

    .line 27
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/org/apache/commons/text/CharacterPredicates;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/CharacterPredicates;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 27
    const-class v0, Lorg/checkerframework/org/apache/commons/text/CharacterPredicates;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/commons/text/CharacterPredicates;

    return-object v0
.end method

.method public static values()[Lorg/checkerframework/org/apache/commons/text/CharacterPredicates;
    .locals 1

    .line 27
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/CharacterPredicates;->$VALUES:[Lorg/checkerframework/org/apache/commons/text/CharacterPredicates;

    invoke-virtual {v0}, [Lorg/checkerframework/org/apache/commons/text/CharacterPredicates;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/checkerframework/org/apache/commons/text/CharacterPredicates;

    return-object v0
.end method
