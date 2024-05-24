.class Lorg/checkerframework/com/google/common/collect/Lists$TwoPlusArrayList;
.super Ljava/util/AbstractList;
.source "Lists.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/Lists;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TwoPlusArrayList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList<",
        "TE;>;",
        "Ljava/io/Serializable;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final first:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field final rest:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field final second:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;[TE;)V"
        }
    .end annotation

    .line 343
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Lists$TwoPlusArrayList;, "Lorg/checkerframework/com/google/common/collect/Lists$TwoPlusArrayList<TE;>;"
    .local p1, "first":Ljava/lang/Object;, "TE;"
    .local p2, "second":Ljava/lang/Object;, "TE;"
    .local p3, "rest":[Ljava/lang/Object;, "[TE;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 344
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/Lists$TwoPlusArrayList;->first:Ljava/lang/Object;

    .line 345
    iput-object p2, p0, Lorg/checkerframework/com/google/common/collect/Lists$TwoPlusArrayList;->second:Ljava/lang/Object;

    .line 346
    invoke-static {p3}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/Lists$TwoPlusArrayList;->rest:[Ljava/lang/Object;

    .line 347
    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 356
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Lists$TwoPlusArrayList;, "Lorg/checkerframework/com/google/common/collect/Lists$TwoPlusArrayList<TE;>;"
    packed-switch p1, :pswitch_data_0

    .line 363
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Lists$TwoPlusArrayList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 364
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Lists$TwoPlusArrayList;->rest:[Ljava/lang/Object;

    add-int/lit8 v1, p1, -0x2

    aget-object v0, v0, v1

    return-object v0

    .line 360
    :pswitch_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Lists$TwoPlusArrayList;->second:Ljava/lang/Object;

    return-object v0

    .line 358
    :pswitch_1
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Lists$TwoPlusArrayList;->first:Ljava/lang/Object;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public size()I
    .locals 2

    .line 351
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Lists$TwoPlusArrayList;, "Lorg/checkerframework/com/google/common/collect/Lists$TwoPlusArrayList<TE;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Lists$TwoPlusArrayList;->rest:[Ljava/lang/Object;

    array-length v0, v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/math/IntMath;->saturatedAdd(II)I

    move-result v0

    return v0
.end method
