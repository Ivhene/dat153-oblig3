.class final enum Lorg/checkerframework/org/apache/commons/text/CharacterPredicates$2;
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

    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/checkerframework/org/apache/commons/text/CharacterPredicates;-><init>(Ljava/lang/String;ILorg/checkerframework/org/apache/commons/text/CharacterPredicates$1;)V

    return-void
.end method


# virtual methods
.method public test(I)Z
    .locals 1
    .param p1, "codePoint"    # I

    .line 49
    invoke-static {p1}, Ljava/lang/Character;->isDigit(I)Z

    move-result v0

    return v0
.end method
