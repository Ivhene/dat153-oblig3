.class Lorg/checkerframework/org/apache/commons/text/diff/StringsComparator$Snake;
.super Ljava/lang/Object;
.source "StringsComparator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/apache/commons/text/diff/StringsComparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Snake"
.end annotation


# instance fields
.field private final diag:I

.field private final end:I

.field private final start:I


# direct methods
.method constructor <init>(III)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "diag"    # I

    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    iput p1, p0, Lorg/checkerframework/org/apache/commons/text/diff/StringsComparator$Snake;->start:I

    .line 299
    iput p2, p0, Lorg/checkerframework/org/apache/commons/text/diff/StringsComparator$Snake;->end:I

    .line 300
    iput p3, p0, Lorg/checkerframework/org/apache/commons/text/diff/StringsComparator$Snake;->diag:I

    .line 301
    return-void
.end method


# virtual methods
.method public getDiag()I
    .locals 1

    .line 327
    iget v0, p0, Lorg/checkerframework/org/apache/commons/text/diff/StringsComparator$Snake;->diag:I

    return v0
.end method

.method public getEnd()I
    .locals 1

    .line 318
    iget v0, p0, Lorg/checkerframework/org/apache/commons/text/diff/StringsComparator$Snake;->end:I

    return v0
.end method

.method public getStart()I
    .locals 1

    .line 309
    iget v0, p0, Lorg/checkerframework/org/apache/commons/text/diff/StringsComparator$Snake;->start:I

    return v0
.end method
