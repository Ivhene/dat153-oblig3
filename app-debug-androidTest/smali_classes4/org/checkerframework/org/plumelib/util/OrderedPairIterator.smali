.class public Lorg/checkerframework/org/plumelib/util/OrderedPairIterator;
.super Ljava/lang/Object;
.source "OrderedPairIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lorg/checkerframework/org/plumelib/util/Pair<",
        "TT;TT;>;>;"
    }
.end annotation


# instance fields
.field comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TT;>;"
        }
    .end annotation
.end field

.field itor1:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation
.end field

.field itor2:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation
.end field

.field next1:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field next2:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Iterator;Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "TT;>;",
            "Ljava/util/Iterator<",
            "TT;>;)V"
        }
    .end annotation

    .line 64
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/OrderedPairIterator;, "Lorg/checkerframework/org/plumelib/util/OrderedPairIterator<TT;>;"
    .local p1, "itor1":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    .local p2, "itor2":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lorg/checkerframework/org/plumelib/util/OrderedPairIterator;->itor1:Ljava/util/Iterator;

    .line 66
    iput-object p2, p0, Lorg/checkerframework/org/plumelib/util/OrderedPairIterator;->itor2:Ljava/util/Iterator;

    .line 67
    invoke-direct {p0}, Lorg/checkerframework/org/plumelib/util/OrderedPairIterator;->setnext1()V

    .line 68
    invoke-direct {p0}, Lorg/checkerframework/org/plumelib/util/OrderedPairIterator;->setnext2()V

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/util/Iterator;Ljava/util/Iterator;Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "TT;>;",
            "Ljava/util/Iterator<",
            "TT;>;",
            "Ljava/util/Comparator<",
            "TT;>;)V"
        }
    .end annotation

    .line 80
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/OrderedPairIterator;, "Lorg/checkerframework/org/plumelib/util/OrderedPairIterator<TT;>;"
    .local p1, "itor1":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    .local p2, "itor2":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    .local p3, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/org/plumelib/util/OrderedPairIterator;-><init>(Ljava/util/Iterator;Ljava/util/Iterator;)V

    .line 81
    iput-object p3, p0, Lorg/checkerframework/org/plumelib/util/OrderedPairIterator;->comparator:Ljava/util/Comparator;

    .line 82
    return-void
.end method

.method private return1()Lorg/checkerframework/org/plumelib/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/org/plumelib/util/Pair<",
            "TT;TT;>;"
        }
    .end annotation

    .line 107
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/OrderedPairIterator;, "Lorg/checkerframework/org/plumelib/util/OrderedPairIterator<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/OrderedPairIterator;->next1:Ljava/lang/Object;

    .line 108
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/checkerframework/org/plumelib/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/org/plumelib/util/Pair;

    move-result-object v0

    .line 109
    .local v0, "result":Lorg/checkerframework/org/plumelib/util/Pair;, "Lorg/checkerframework/org/plumelib/util/Pair<TT;TT;>;"
    invoke-direct {p0}, Lorg/checkerframework/org/plumelib/util/OrderedPairIterator;->setnext1()V

    .line 110
    return-object v0
.end method

.method private return2()Lorg/checkerframework/org/plumelib/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/org/plumelib/util/Pair<",
            "TT;TT;>;"
        }
    .end annotation

    .line 118
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/OrderedPairIterator;, "Lorg/checkerframework/org/plumelib/util/OrderedPairIterator<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/OrderedPairIterator;->next2:Ljava/lang/Object;

    .line 119
    const/4 v1, 0x0

    invoke-static {v1, v0}, Lorg/checkerframework/org/plumelib/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/org/plumelib/util/Pair;

    move-result-object v0

    .line 120
    .local v0, "result":Lorg/checkerframework/org/plumelib/util/Pair;, "Lorg/checkerframework/org/plumelib/util/Pair<TT;TT;>;"
    invoke-direct {p0}, Lorg/checkerframework/org/plumelib/util/OrderedPairIterator;->setnext2()V

    .line 121
    return-object v0
.end method

.method private returnboth()Lorg/checkerframework/org/plumelib/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/org/plumelib/util/Pair<",
            "TT;TT;>;"
        }
    .end annotation

    .line 129
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/OrderedPairIterator;, "Lorg/checkerframework/org/plumelib/util/OrderedPairIterator<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/OrderedPairIterator;->next1:Ljava/lang/Object;

    iget-object v1, p0, Lorg/checkerframework/org/plumelib/util/OrderedPairIterator;->next2:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/checkerframework/org/plumelib/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/org/plumelib/util/Pair;

    move-result-object v0

    .line 130
    .local v0, "result":Lorg/checkerframework/org/plumelib/util/Pair;, "Lorg/checkerframework/org/plumelib/util/Pair<TT;TT;>;"
    invoke-direct {p0}, Lorg/checkerframework/org/plumelib/util/OrderedPairIterator;->setnext1()V

    .line 131
    invoke-direct {p0}, Lorg/checkerframework/org/plumelib/util/OrderedPairIterator;->setnext2()V

    .line 132
    return-object v0
.end method

.method private setnext1()V
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "itor1"
        }
    .end annotation

    .line 86
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/OrderedPairIterator;, "Lorg/checkerframework/org/plumelib/util/OrderedPairIterator<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/OrderedPairIterator;->itor1:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/OrderedPairIterator;->itor1:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/checkerframework/org/plumelib/util/OrderedPairIterator;->next1:Ljava/lang/Object;

    .line 87
    return-void
.end method

.method private setnext2()V
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "itor2"
        }
    .end annotation

    .line 91
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/OrderedPairIterator;, "Lorg/checkerframework/org/plumelib/util/OrderedPairIterator<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/OrderedPairIterator;->itor2:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/OrderedPairIterator;->itor2:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/checkerframework/org/plumelib/util/OrderedPairIterator;->next2:Ljava/lang/Object;

    .line 92
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 99
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/OrderedPairIterator;, "Lorg/checkerframework/org/plumelib/util/OrderedPairIterator<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/OrderedPairIterator;->next1:Ljava/lang/Object;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/OrderedPairIterator;->next2:Ljava/lang/Object;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 38
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/OrderedPairIterator;, "Lorg/checkerframework/org/plumelib/util/OrderedPairIterator<TT;>;"
    invoke-virtual {p0}, Lorg/checkerframework/org/plumelib/util/OrderedPairIterator;->next()Lorg/checkerframework/org/plumelib/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/checkerframework/org/plumelib/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/org/plumelib/util/Pair<",
            "TT;TT;>;"
        }
    .end annotation

    .line 137
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/OrderedPairIterator;, "Lorg/checkerframework/org/plumelib/util/OrderedPairIterator<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/OrderedPairIterator;->next1:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 138
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/OrderedPairIterator;->next2:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 141
    invoke-direct {p0}, Lorg/checkerframework/org/plumelib/util/OrderedPairIterator;->return2()Lorg/checkerframework/org/plumelib/util/Pair;

    move-result-object v0

    return-object v0

    .line 139
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 144
    :cond_1
    iget-object v1, p0, Lorg/checkerframework/org/plumelib/util/OrderedPairIterator;->next2:Ljava/lang/Object;

    if-nez v1, :cond_2

    .line 145
    invoke-direct {p0}, Lorg/checkerframework/org/plumelib/util/OrderedPairIterator;->return1()Lorg/checkerframework/org/plumelib/util/Pair;

    move-result-object v0

    return-object v0

    .line 150
    :cond_2
    :try_start_0
    iget-object v2, p0, Lorg/checkerframework/org/plumelib/util/OrderedPairIterator;->comparator:Ljava/util/Comparator;

    if-nez v2, :cond_3

    .line 157
    check-cast v0, Ljava/lang/Comparable;

    .line 158
    .local v0, "cble1":Ljava/lang/Comparable;, "Ljava/lang/Comparable<TT;>;"
    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    move v0, v1

    .line 159
    .local v0, "comparison":I
    goto :goto_0

    .line 160
    .end local v0    # "comparison":I
    :cond_3
    invoke-interface {v2, v0, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    .restart local v0    # "comparison":I
    :goto_0
    goto :goto_1

    .line 162
    .end local v0    # "comparison":I
    :catch_0
    move-exception v0

    .line 164
    .local v0, "npe":Ljava/lang/NullPointerException;
    iget-object v1, p0, Lorg/checkerframework/org/plumelib/util/OrderedPairIterator;->next1:Ljava/lang/Object;

    if-nez v1, :cond_4

    iget-object v2, p0, Lorg/checkerframework/org/plumelib/util/OrderedPairIterator;->next2:Ljava/lang/Object;

    if-nez v2, :cond_4

    .line 165
    const/4 v1, 0x0

    move v0, v1

    .local v1, "comparison":I
    goto :goto_1

    .line 166
    .end local v1    # "comparison":I
    :cond_4
    if-nez v1, :cond_5

    iget-object v2, p0, Lorg/checkerframework/org/plumelib/util/OrderedPairIterator;->next2:Ljava/lang/Object;

    if-eqz v2, :cond_5

    .line 167
    const/4 v1, -0x1

    move v0, v1

    .restart local v1    # "comparison":I
    goto :goto_1

    .line 168
    .end local v1    # "comparison":I
    :cond_5
    if-eqz v1, :cond_8

    iget-object v1, p0, Lorg/checkerframework/org/plumelib/util/OrderedPairIterator;->next2:Ljava/lang/Object;

    if-nez v1, :cond_8

    .line 169
    const/4 v1, 0x1

    move v0, v1

    .line 174
    .local v0, "comparison":I
    :goto_1
    if-gez v0, :cond_6

    .line 175
    invoke-direct {p0}, Lorg/checkerframework/org/plumelib/util/OrderedPairIterator;->return1()Lorg/checkerframework/org/plumelib/util/Pair;

    move-result-object v1

    return-object v1

    .line 176
    :cond_6
    if-lez v0, :cond_7

    .line 177
    invoke-direct {p0}, Lorg/checkerframework/org/plumelib/util/OrderedPairIterator;->return2()Lorg/checkerframework/org/plumelib/util/Pair;

    move-result-object v1

    return-object v1

    .line 179
    :cond_7
    invoke-direct {p0}, Lorg/checkerframework/org/plumelib/util/OrderedPairIterator;->returnboth()Lorg/checkerframework/org/plumelib/util/Pair;

    move-result-object v1

    return-object v1

    .line 171
    .local v0, "npe":Ljava/lang/NullPointerException;
    :cond_8
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "this can\'t happen "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/checkerframework/org/plumelib/util/OrderedPairIterator;->next1:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/checkerframework/org/plumelib/util/OrderedPairIterator;->next2:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public remove()V
    .locals 1

    .line 187
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/OrderedPairIterator;, "Lorg/checkerframework/org/plumelib/util/OrderedPairIterator<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
