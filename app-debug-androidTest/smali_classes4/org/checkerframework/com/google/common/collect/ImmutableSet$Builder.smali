.class public Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder;
.super Lorg/checkerframework/com/google/common/collect/ImmutableCollection$Builder;
.source "ImmutableSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/ImmutableSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/collect/ImmutableCollection$Builder<",
        "TE;>;"
    }
.end annotation


# instance fields
.field forceCopy:Z

.field private impl:Lorg/checkerframework/com/google/common/collect/ImmutableSet$SetBuilderImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/ImmutableSet$SetBuilderImpl<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 480
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder<TE;>;"
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder;-><init>(I)V

    .line 481
    return-void
.end method

.method constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .line 483
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder<TE;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableCollection$Builder;-><init>()V

    .line 484
    new-instance v0, Lorg/checkerframework/com/google/common/collect/ImmutableSet$RegularSetBuilderImpl;

    invoke-direct {v0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableSet$RegularSetBuilderImpl;-><init>(I)V

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder;->impl:Lorg/checkerframework/com/google/common/collect/ImmutableSet$SetBuilderImpl;

    .line 485
    return-void
.end method

.method constructor <init>(Z)V
    .locals 1
    .param p1, "subclass"    # Z

    .line 487
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder<TE;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableCollection$Builder;-><init>()V

    .line 488
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder;->impl:Lorg/checkerframework/com/google/common/collect/ImmutableSet$SetBuilderImpl;

    .line 489
    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableCollection$Builder;
    .locals 0

    .line 475
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder<TE;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic add([Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableCollection$Builder;
    .locals 0

    .line 475
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder<TE;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder;->add([Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 510
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder;->copyIfNecessary()V

    .line 512
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder;->impl:Lorg/checkerframework/com/google/common/collect/ImmutableSet$SetBuilderImpl;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableSet$SetBuilderImpl;->add(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableSet$SetBuilderImpl;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder;->impl:Lorg/checkerframework/com/google/common/collect/ImmutableSet$SetBuilderImpl;

    .line 513
    return-object p0
.end method

.method public varargs add([Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 519
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder<TE;>;"
    .local p1, "elements":[Ljava/lang/Object;, "[TE;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableCollection$Builder;->add([Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableCollection$Builder;

    .line 520
    return-object p0
.end method

.method public bridge synthetic addAll(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableCollection$Builder;
    .locals 0

    .line 475
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder<TE;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder;->addAll(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addAll(Ljava/util/Iterator;)Lorg/checkerframework/com/google/common/collect/ImmutableCollection$Builder;
    .locals 0

    .line 475
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder<TE;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder;->addAll(Ljava/util/Iterator;)Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addAll(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 534
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder<TE;>;"
    .local p1, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TE;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableCollection$Builder;->addAll(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableCollection$Builder;

    .line 535
    return-object p0
.end method

.method public addAll(Ljava/util/Iterator;)Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TE;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 541
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder<TE;>;"
    .local p1, "elements":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableCollection$Builder;->addAll(Ljava/util/Iterator;)Lorg/checkerframework/com/google/common/collect/ImmutableCollection$Builder;

    .line 542
    return-object p0
.end method

.method public bridge synthetic build()Lorg/checkerframework/com/google/common/collect/ImmutableCollection;
    .locals 1

    .line 475
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder<TE;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder;->build()Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/checkerframework/com/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSet<",
            "TE;>;"
        }
    .end annotation

    .line 553
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder<TE;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder;->forceCopy:Z

    .line 554
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder;->impl:Lorg/checkerframework/com/google/common/collect/ImmutableSet$SetBuilderImpl;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableSet$SetBuilderImpl;->review()Lorg/checkerframework/com/google/common/collect/ImmutableSet$SetBuilderImpl;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder;->impl:Lorg/checkerframework/com/google/common/collect/ImmutableSet$SetBuilderImpl;

    .line 555
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableSet$SetBuilderImpl;->build()Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method combine(Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder;)Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder<",
            "TE;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 546
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder<TE;>;"
    .local p1, "other":Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder<TE;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder;->copyIfNecessary()V

    .line 547
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder;->impl:Lorg/checkerframework/com/google/common/collect/ImmutableSet$SetBuilderImpl;

    iget-object v1, p1, Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder;->impl:Lorg/checkerframework/com/google/common/collect/ImmutableSet$SetBuilderImpl;

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/collect/ImmutableSet$SetBuilderImpl;->combine(Lorg/checkerframework/com/google/common/collect/ImmutableSet$SetBuilderImpl;)Lorg/checkerframework/com/google/common/collect/ImmutableSet$SetBuilderImpl;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder;->impl:Lorg/checkerframework/com/google/common/collect/ImmutableSet$SetBuilderImpl;

    .line 548
    return-object p0
.end method

.method copy()V
    .locals 1

    .line 504
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder<TE;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder;->impl:Lorg/checkerframework/com/google/common/collect/ImmutableSet$SetBuilderImpl;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableSet$SetBuilderImpl;->copy()Lorg/checkerframework/com/google/common/collect/ImmutableSet$SetBuilderImpl;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder;->impl:Lorg/checkerframework/com/google/common/collect/ImmutableSet$SetBuilderImpl;

    .line 505
    return-void
.end method

.method final copyIfNecessary()V
    .locals 1

    .line 497
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder<TE;>;"
    iget-boolean v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder;->forceCopy:Z

    if-eqz v0, :cond_0

    .line 498
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder;->copy()V

    .line 499
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder;->forceCopy:Z

    .line 501
    :cond_0
    return-void
.end method

.method forceJdk()V
    .locals 2

    .line 493
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder<TE;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/ImmutableSet$JdkBackedSetBuilderImpl;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder;->impl:Lorg/checkerframework/com/google/common/collect/ImmutableSet$SetBuilderImpl;

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/collect/ImmutableSet$JdkBackedSetBuilderImpl;-><init>(Lorg/checkerframework/com/google/common/collect/ImmutableSet$SetBuilderImpl;)V

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder;->impl:Lorg/checkerframework/com/google/common/collect/ImmutableSet$SetBuilderImpl;

    .line 494
    return-void
.end method
