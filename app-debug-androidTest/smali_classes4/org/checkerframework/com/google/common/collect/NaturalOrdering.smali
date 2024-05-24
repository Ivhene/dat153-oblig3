.class final Lorg/checkerframework/com/google/common/collect/NaturalOrdering;
.super Lorg/checkerframework/com/google/common/collect/Ordering;
.source "NaturalOrdering.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/Ordering<",
        "Ljava/lang/Comparable;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lorg/checkerframework/com/google/common/collect/NaturalOrdering;

.field private static final serialVersionUID:J


# instance fields
.field private transient nullsFirst:Lorg/checkerframework/com/google/common/collect/Ordering;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/Ordering<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field

.field private transient nullsLast:Lorg/checkerframework/com/google/common/collect/Ordering;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/Ordering<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lorg/checkerframework/com/google/common/collect/NaturalOrdering;

    invoke-direct {v0}, Lorg/checkerframework/com/google/common/collect/NaturalOrdering;-><init>()V

    sput-object v0, Lorg/checkerframework/com/google/common/collect/NaturalOrdering;->INSTANCE:Lorg/checkerframework/com/google/common/collect/NaturalOrdering;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/Ordering;-><init>()V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 66
    sget-object v0, Lorg/checkerframework/com/google/common/collect/NaturalOrdering;->INSTANCE:Lorg/checkerframework/com/google/common/collect/NaturalOrdering;

    return-object v0
.end method


# virtual methods
.method public compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .locals 1
    .param p1, "left"    # Ljava/lang/Comparable;
    .param p2, "right"    # Ljava/lang/Comparable;

    .line 36
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    invoke-static {p2}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 26
    check-cast p1, Ljava/lang/Comparable;

    check-cast p2, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/NaturalOrdering;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p1

    return p1
.end method

.method public nullsFirst()Lorg/checkerframework/com/google/common/collect/Ordering;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Ljava/lang/Comparable;",
            ">()",
            "Lorg/checkerframework/com/google/common/collect/Ordering<",
            "TS;>;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/NaturalOrdering;->nullsFirst:Lorg/checkerframework/com/google/common/collect/Ordering;

    .line 44
    .local v0, "result":Lorg/checkerframework/com/google/common/collect/Ordering;, "Lorg/checkerframework/com/google/common/collect/Ordering<Ljava/lang/Comparable;>;"
    if-nez v0, :cond_0

    .line 45
    invoke-super {p0}, Lorg/checkerframework/com/google/common/collect/Ordering;->nullsFirst()Lorg/checkerframework/com/google/common/collect/Ordering;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/com/google/common/collect/NaturalOrdering;->nullsFirst:Lorg/checkerframework/com/google/common/collect/Ordering;

    move-object v0, v1

    .line 47
    :cond_0
    return-object v0
.end method

.method public nullsLast()Lorg/checkerframework/com/google/common/collect/Ordering;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Ljava/lang/Comparable;",
            ">()",
            "Lorg/checkerframework/com/google/common/collect/Ordering<",
            "TS;>;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/NaturalOrdering;->nullsLast:Lorg/checkerframework/com/google/common/collect/Ordering;

    .line 53
    .local v0, "result":Lorg/checkerframework/com/google/common/collect/Ordering;, "Lorg/checkerframework/com/google/common/collect/Ordering<Ljava/lang/Comparable;>;"
    if-nez v0, :cond_0

    .line 54
    invoke-super {p0}, Lorg/checkerframework/com/google/common/collect/Ordering;->nullsLast()Lorg/checkerframework/com/google/common/collect/Ordering;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/com/google/common/collect/NaturalOrdering;->nullsLast:Lorg/checkerframework/com/google/common/collect/Ordering;

    move-object v0, v1

    .line 56
    :cond_0
    return-object v0
.end method

.method public reverse()Lorg/checkerframework/com/google/common/collect/Ordering;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Ljava/lang/Comparable;",
            ">()",
            "Lorg/checkerframework/com/google/common/collect/Ordering<",
            "TS;>;"
        }
    .end annotation

    .line 61
    sget-object v0, Lorg/checkerframework/com/google/common/collect/ReverseNaturalOrdering;->INSTANCE:Lorg/checkerframework/com/google/common/collect/ReverseNaturalOrdering;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 71
    const-string v0, "Ordering.natural()"

    return-object v0
.end method
