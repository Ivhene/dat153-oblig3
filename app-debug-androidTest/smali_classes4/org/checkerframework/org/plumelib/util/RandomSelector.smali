.class public Lorg/checkerframework/org/plumelib/util/RandomSelector;
.super Ljava/lang/Object;
.source "RandomSelector.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private coinTossMode:Z

.field private generator:Ljava/util/Random;

.field private keepProbability:D

.field private numElts:I

.field private observed:I

.field private values:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(DLjava/util/Random;)V
    .locals 2
    .param p1, "keepProbability"    # D
    .param p3, "r"    # Ljava/util/Random;

    .line 103
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/RandomSelector;, "Lorg/checkerframework/org/plumelib/util/RandomSelector<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lorg/checkerframework/org/plumelib/util/RandomSelector;->keepProbability:D

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lorg/checkerframework/org/plumelib/util/RandomSelector;->numElts:I

    .line 70
    iput v0, p0, Lorg/checkerframework/org/plumelib/util/RandomSelector;->observed:I

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/plumelib/util/RandomSelector;->values:Ljava/util/ArrayList;

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/checkerframework/org/plumelib/util/RandomSelector;->coinTossMode:Z

    .line 105
    iput-wide p1, p0, Lorg/checkerframework/org/plumelib/util/RandomSelector;->keepProbability:D

    .line 106
    iput-object p3, p0, Lorg/checkerframework/org/plumelib/util/RandomSelector;->generator:Ljava/util/Random;

    .line 107
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "numElts"    # I

    .line 83
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/RandomSelector;, "Lorg/checkerframework/org/plumelib/util/RandomSelector<TT;>;"
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/plumelib/util/RandomSelector;-><init>(ILjava/util/Random;)V

    .line 84
    return-void
.end method

.method public constructor <init>(ILjava/util/Random;)V
    .locals 2
    .param p1, "numElts"    # I
    .param p2, "r"    # Ljava/util/Random;

    .line 91
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/RandomSelector;, "Lorg/checkerframework/org/plumelib/util/RandomSelector<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lorg/checkerframework/org/plumelib/util/RandomSelector;->keepProbability:D

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lorg/checkerframework/org/plumelib/util/RandomSelector;->numElts:I

    .line 70
    iput v0, p0, Lorg/checkerframework/org/plumelib/util/RandomSelector;->observed:I

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/plumelib/util/RandomSelector;->values:Ljava/util/ArrayList;

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/checkerframework/org/plumelib/util/RandomSelector;->coinTossMode:Z

    .line 93
    iput p1, p0, Lorg/checkerframework/org/plumelib/util/RandomSelector;->numElts:I

    .line 94
    iput v0, p0, Lorg/checkerframework/org/plumelib/util/RandomSelector;->observed:I

    .line 95
    iput-object p2, p0, Lorg/checkerframework/org/plumelib/util/RandomSelector;->generator:Ljava/util/Random;

    .line 96
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 123
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/RandomSelector;, "Lorg/checkerframework/org/plumelib/util/RandomSelector<TT;>;"
    .local p1, "next":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lorg/checkerframework/org/plumelib/util/RandomSelector;->coinTossMode:Z

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/RandomSelector;->generator:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    iget-wide v2, p0, Lorg/checkerframework/org/plumelib/util/RandomSelector;->keepProbability:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 125
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/RandomSelector;->values:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    :cond_0
    return-void

    .line 135
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/RandomSelector;->generator:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    iget v2, p0, Lorg/checkerframework/org/plumelib/util/RandomSelector;->numElts:I

    int-to-double v2, v2

    iget v4, p0, Lorg/checkerframework/org/plumelib/util/RandomSelector;->observed:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/checkerframework/org/plumelib/util/RandomSelector;->observed:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    cmpg-double v0, v0, v2

    if-gez v0, :cond_3

    .line 136
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/RandomSelector;->values:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lorg/checkerframework/org/plumelib/util/RandomSelector;->numElts:I

    if-ge v0, v1, :cond_2

    .line 137
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/RandomSelector;->values:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 140
    :cond_2
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/RandomSelector;->generator:Ljava/util/Random;

    iget-object v1, p0, Lorg/checkerframework/org/plumelib/util/RandomSelector;->values:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 142
    .local v0, "rem":I
    iget-object v1, p0, Lorg/checkerframework/org/plumelib/util/RandomSelector;->values:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 146
    .end local v0    # "rem":I
    :cond_3
    :goto_0
    return-void
.end method

.method public getValues()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 155
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/RandomSelector;, "Lorg/checkerframework/org/plumelib/util/RandomSelector<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 156
    .local v0, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    iget-object v1, p0, Lorg/checkerframework/org/plumelib/util/RandomSelector;->values:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 157
    return-object v0
.end method
