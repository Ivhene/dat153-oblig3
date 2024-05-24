.class public Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/WrappingRangeIterator;
.super Ljava/lang/Object;
.source "WrappingRangeIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private currentValue:I

.field private final limit:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "limit"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "limit"
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/WrappingRangeIterator;->currentValue:I

    .line 10
    iput p1, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/WrappingRangeIterator;->limit:I

    .line 11
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 15
    const/4 v0, 0x1

    return v0
.end method

.method public next()Ljava/lang/Integer;
    .locals 3

    .line 20
    iget v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/WrappingRangeIterator;->currentValue:I

    .line 21
    .local v0, "valueToReturn":I
    iget v1, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/WrappingRangeIterator;->currentValue:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/WrappingRangeIterator;->currentValue:I

    .line 22
    iget v2, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/WrappingRangeIterator;->limit:I

    if-ne v1, v2, :cond_0

    .line 23
    const/4 v1, 0x0

    iput v1, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/WrappingRangeIterator;->currentValue:I

    .line 25
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/WrappingRangeIterator;->next()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
