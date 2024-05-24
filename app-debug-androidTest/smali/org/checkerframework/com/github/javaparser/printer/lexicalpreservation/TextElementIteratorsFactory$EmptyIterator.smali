.class Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$EmptyIterator;
.super Ljava/lang/Object;
.source "TextElementIteratorsFactory.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EmptyIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 87
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$EmptyIterator;, "Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$EmptyIterator<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 90
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$EmptyIterator;, "Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$EmptyIterator<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 95
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$EmptyIterator;, "Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$EmptyIterator<TE;>;"
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method
