.class abstract Lorg/checkerframework/com/google/common/base/AbstractIterator;
.super Ljava/lang/Object;
.source "AbstractIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/google/common/base/AbstractIterator$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private next:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private state:Lorg/checkerframework/com/google/common/base/AbstractIterator$State;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 33
    .local p0, "this":Lorg/checkerframework/com/google/common/base/AbstractIterator;, "Lorg/checkerframework/com/google/common/base/AbstractIterator<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    sget-object v0, Lorg/checkerframework/com/google/common/base/AbstractIterator$State;->NOT_READY:Lorg/checkerframework/com/google/common/base/AbstractIterator$State;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/base/AbstractIterator;->state:Lorg/checkerframework/com/google/common/base/AbstractIterator$State;

    .line 33
    return-void
.end method

.method private tryToComputeNext()Z
    .locals 2

    .line 66
    .local p0, "this":Lorg/checkerframework/com/google/common/base/AbstractIterator;, "Lorg/checkerframework/com/google/common/base/AbstractIterator<TT;>;"
    sget-object v0, Lorg/checkerframework/com/google/common/base/AbstractIterator$State;->FAILED:Lorg/checkerframework/com/google/common/base/AbstractIterator$State;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/base/AbstractIterator;->state:Lorg/checkerframework/com/google/common/base/AbstractIterator$State;

    .line 67
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/base/AbstractIterator;->computeNext()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/base/AbstractIterator;->next:Ljava/lang/Object;

    .line 68
    iget-object v0, p0, Lorg/checkerframework/com/google/common/base/AbstractIterator;->state:Lorg/checkerframework/com/google/common/base/AbstractIterator$State;

    sget-object v1, Lorg/checkerframework/com/google/common/base/AbstractIterator$State;->DONE:Lorg/checkerframework/com/google/common/base/AbstractIterator$State;

    if-eq v0, v1, :cond_0

    .line 69
    sget-object v0, Lorg/checkerframework/com/google/common/base/AbstractIterator$State;->READY:Lorg/checkerframework/com/google/common/base/AbstractIterator$State;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/base/AbstractIterator;->state:Lorg/checkerframework/com/google/common/base/AbstractIterator$State;

    .line 70
    const/4 v0, 0x1

    return v0

    .line 72
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected abstract computeNext()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected final endOfData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 48
    .local p0, "this":Lorg/checkerframework/com/google/common/base/AbstractIterator;, "Lorg/checkerframework/com/google/common/base/AbstractIterator<TT;>;"
    sget-object v0, Lorg/checkerframework/com/google/common/base/AbstractIterator$State;->DONE:Lorg/checkerframework/com/google/common/base/AbstractIterator$State;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/base/AbstractIterator;->state:Lorg/checkerframework/com/google/common/base/AbstractIterator$State;

    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method public final hasNext()Z
    .locals 4

    .line 54
    .local p0, "this":Lorg/checkerframework/com/google/common/base/AbstractIterator;, "Lorg/checkerframework/com/google/common/base/AbstractIterator<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/base/AbstractIterator;->state:Lorg/checkerframework/com/google/common/base/AbstractIterator$State;

    sget-object v1, Lorg/checkerframework/com/google/common/base/AbstractIterator$State;->FAILED:Lorg/checkerframework/com/google/common/base/AbstractIterator$State;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    invoke-static {v0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkState(Z)V

    .line 55
    sget-object v0, Lorg/checkerframework/com/google/common/base/AbstractIterator$1;->$SwitchMap$com$google$common$base$AbstractIterator$State:[I

    iget-object v1, p0, Lorg/checkerframework/com/google/common/base/AbstractIterator;->state:Lorg/checkerframework/com/google/common/base/AbstractIterator$State;

    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/base/AbstractIterator$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 62
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/base/AbstractIterator;->tryToComputeNext()Z

    move-result v0

    return v0

    .line 59
    :pswitch_0
    return v3

    .line 57
    :pswitch_1
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 77
    .local p0, "this":Lorg/checkerframework/com/google/common/base/AbstractIterator;, "Lorg/checkerframework/com/google/common/base/AbstractIterator<TT;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/base/AbstractIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    sget-object v0, Lorg/checkerframework/com/google/common/base/AbstractIterator$State;->NOT_READY:Lorg/checkerframework/com/google/common/base/AbstractIterator$State;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/base/AbstractIterator;->state:Lorg/checkerframework/com/google/common/base/AbstractIterator$State;

    .line 81
    iget-object v0, p0, Lorg/checkerframework/com/google/common/base/AbstractIterator;->next:Ljava/lang/Object;

    .line 82
    .local v0, "result":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/checkerframework/com/google/common/base/AbstractIterator;->next:Ljava/lang/Object;

    .line 83
    return-object v0

    .line 78
    .end local v0    # "result":Ljava/lang/Object;, "TT;"
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .locals 1

    .line 88
    .local p0, "this":Lorg/checkerframework/com/google/common/base/AbstractIterator;, "Lorg/checkerframework/com/google/common/base/AbstractIterator<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
