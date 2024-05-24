.class final enum Lorg/checkerframework/org/apache/commons/text/CharacterPredicates$7;
.super Lorg/checkerframework/org/apache/commons/text/CharacterPredicates;
.source "CharacterPredicates.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/apache/commons/text/CharacterPredicates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 106
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/checkerframework/org/apache/commons/text/CharacterPredicates;-><init>(Ljava/lang/String;ILorg/checkerframework/org/apache/commons/text/CharacterPredicates$1;)V

    return-void
.end method


# virtual methods
.method public test(I)Z
    .locals 1
    .param p1, "codePoint"    # I

    .line 109
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/CharacterPredicates$7;->ASCII_LOWERCASE_LETTERS:Lorg/checkerframework/org/apache/commons/text/CharacterPredicates;

    invoke-virtual {v0, p1}, Lorg/checkerframework/org/apache/commons/text/CharacterPredicates;->test(I)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/checkerframework/org/apache/commons/text/CharacterPredicates$7;->ASCII_UPPERCASE_LETTERS:Lorg/checkerframework/org/apache/commons/text/CharacterPredicates;

    invoke-virtual {v0, p1}, Lorg/checkerframework/org/apache/commons/text/CharacterPredicates;->test(I)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/checkerframework/org/apache/commons/text/CharacterPredicates$7;->ARABIC_NUMERALS:Lorg/checkerframework/org/apache/commons/text/CharacterPredicates;

    .line 110
    invoke-virtual {v0, p1}, Lorg/checkerframework/org/apache/commons/text/CharacterPredicates;->test(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 109
    :goto_1
    return v0
.end method
