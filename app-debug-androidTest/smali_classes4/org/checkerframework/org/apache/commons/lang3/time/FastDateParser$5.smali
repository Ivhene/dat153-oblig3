.class Lorg/checkerframework/org/apache/commons/lang3/time/FastDateParser$5;
.super Lorg/checkerframework/org/apache/commons/lang3/time/FastDateParser$NumberStrategy;
.source "FastDateParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/apache/commons/lang3/time/FastDateParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "field"    # I

    .line 981
    invoke-direct {p0, p1}, Lorg/checkerframework/org/apache/commons/lang3/time/FastDateParser$NumberStrategy;-><init>(I)V

    return-void
.end method


# virtual methods
.method modify(Lorg/checkerframework/org/apache/commons/lang3/time/FastDateParser;I)I
    .locals 1
    .param p1, "parser"    # Lorg/checkerframework/org/apache/commons/lang3/time/FastDateParser;
    .param p2, "iValue"    # I

    .line 984
    const/16 v0, 0x18

    if-ne p2, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    return v0
.end method