.class public Lorg/checkerframework/org/plumelib/util/LimitedSizeSet;
.super Ljava/lang/Object;
.source "LimitedSizeSet.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static assertsEnabled:Z = false

.field static final serialVersionUID:J = 0x131a62dL


# instance fields
.field protected numValues:I

.field protected values:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    nop

    .line 43
    const/4 v0, 0x0

    sput-boolean v0, Lorg/checkerframework/org/plumelib/util/LimitedSizeSet;->assertsEnabled:Z

    .line 46
    const/4 v0, 0x1

    sput-boolean v0, Lorg/checkerframework/org/plumelib/util/LimitedSizeSet;->assertsEnabled:Z

    .line 48
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "maxValues"    # I

    .line 55
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/LimitedSizeSet;, "Lorg/checkerframework/org/plumelib/util/LimitedSizeSet<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    sget-boolean v0, Lorg/checkerframework/org/plumelib/util/LimitedSizeSet;->assertsEnabled:Z

    if-eqz v0, :cond_1

    if-lez p1, :cond_0

    goto :goto_0

    .line 57
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxValues should be positive, is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_1
    :goto_0
    new-array v0, p1, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 65
    .local v0, "newValuesArray":[Ljava/lang/Object;, "[TT;"
    iput-object v0, p0, Lorg/checkerframework/org/plumelib/util/LimitedSizeSet;->values:[Ljava/lang/Object;

    .line 66
    const/4 v1, 0x0

    iput v1, p0, Lorg/checkerframework/org/plumelib/util/LimitedSizeSet;->numValues:I

    .line 67
    return-void
.end method

.method public static merge(ILjava/util/List;)Lorg/checkerframework/org/plumelib/util/LimitedSizeSet;
    .locals 3
    .param p0, "maxValues"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/util/List<",
            "Lorg/checkerframework/org/plumelib/util/LimitedSizeSet<",
            "+TT;>;>;)",
            "Lorg/checkerframework/org/plumelib/util/LimitedSizeSet<",
            "TT;>;"
        }
    .end annotation

    .line 232
    .local p1, "slist":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/org/plumelib/util/LimitedSizeSet<+TT;>;>;"
    new-instance v0, Lorg/checkerframework/org/plumelib/util/LimitedSizeSet;

    invoke-direct {v0, p0}, Lorg/checkerframework/org/plumelib/util/LimitedSizeSet;-><init>(I)V

    .line 233
    .local v0, "result":Lorg/checkerframework/org/plumelib/util/LimitedSizeSet;, "Lorg/checkerframework/org/plumelib/util/LimitedSizeSet<TT;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/org/plumelib/util/LimitedSizeSet;

    .line 234
    .local v2, "s":Lorg/checkerframework/org/plumelib/util/LimitedSizeSet;, "Lorg/checkerframework/org/plumelib/util/LimitedSizeSet<+TT;>;"
    invoke-virtual {v0, v2}, Lorg/checkerframework/org/plumelib/util/LimitedSizeSet;->addAll(Lorg/checkerframework/org/plumelib/util/LimitedSizeSet;)V

    .line 235
    .end local v2    # "s":Lorg/checkerframework/org/plumelib/util/LimitedSizeSet;, "Lorg/checkerframework/org/plumelib/util/LimitedSizeSet<+TT;>;"
    goto :goto_0

    .line 236
    :cond_0
    return-object v0
.end method

.method private nullRep()V
    .locals 1

    .line 195
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/LimitedSizeSet;, "Lorg/checkerframework/org/plumelib/util/LimitedSizeSet<TT;>;"
    invoke-virtual {p0}, Lorg/checkerframework/org/plumelib/util/LimitedSizeSet;->repNulled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/LimitedSizeSet;->values:[Ljava/lang/Object;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/checkerframework/org/plumelib/util/LimitedSizeSet;->numValues:I

    .line 199
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/org/plumelib/util/LimitedSizeSet;->values:[Ljava/lang/Object;

    .line 200
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 75
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/LimitedSizeSet;, "Lorg/checkerframework/org/plumelib/util/LimitedSizeSet<TT;>;"
    .local p1, "elt":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lorg/checkerframework/org/plumelib/util/LimitedSizeSet;->repNulled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    return-void

    .line 79
    :cond_0
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/plumelib/util/LimitedSizeSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    return-void

    .line 82
    :cond_1
    iget v0, p0, Lorg/checkerframework/org/plumelib/util/LimitedSizeSet;->numValues:I

    iget-object v1, p0, Lorg/checkerframework/org/plumelib/util/LimitedSizeSet;->values:[Ljava/lang/Object;

    array-length v2, v1

    if-ne v0, v2, :cond_2

    .line 83
    invoke-direct {p0}, Lorg/checkerframework/org/plumelib/util/LimitedSizeSet;->nullRep()V

    .line 84
    return-void

    .line 86
    :cond_2
    aput-object p1, v1, v0

    .line 87
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/checkerframework/org/plumelib/util/LimitedSizeSet;->numValues:I

    .line 88
    return-void
.end method

.method public addAll(Lorg/checkerframework/org/plumelib/util/LimitedSizeSet;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/org/plumelib/util/LimitedSizeSet<",
            "+TT;>;)V"
        }
    .end annotation

    .line 97
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/LimitedSizeSet;, "Lorg/checkerframework/org/plumelib/util/LimitedSizeSet<TT;>;"
    .local p1, "s":Lorg/checkerframework/org/plumelib/util/LimitedSizeSet;, "Lorg/checkerframework/org/plumelib/util/LimitedSizeSet<+TT;>;"
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 98
    .local v0, "sameObject":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 99
    return-void

    .line 101
    :cond_1
    invoke-virtual {p0}, Lorg/checkerframework/org/plumelib/util/LimitedSizeSet;->repNulled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 102
    return-void

    .line 104
    :cond_2
    invoke-virtual {p1}, Lorg/checkerframework/org/plumelib/util/LimitedSizeSet;->repNulled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 108
    invoke-virtual {p1}, Lorg/checkerframework/org/plumelib/util/LimitedSizeSet;->size()I

    move-result v1

    iget-object v2, p0, Lorg/checkerframework/org/plumelib/util/LimitedSizeSet;->values:[Ljava/lang/Object;

    array-length v2, v2

    if-le v1, v2, :cond_3

    .line 109
    invoke-direct {p0}, Lorg/checkerframework/org/plumelib/util/LimitedSizeSet;->nullRep()V

    .line 110
    return-void

    .line 112
    :cond_3
    new-instance v1, Ljava/lang/Error;

    const-string v2, "Arg is rep-nulled, so we don\'t know its values and can\'t add them to this."

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 118
    :cond_4
    iget-object v1, p1, Lorg/checkerframework/org/plumelib/util/LimitedSizeSet;->values:[Ljava/lang/Object;

    .line 119
    .local v1, "svalues":[Ljava/lang/Object;, "[TT;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {p1}, Lorg/checkerframework/org/plumelib/util/LimitedSizeSet;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    .line 121
    aget-object v3, v1, v2

    if-eqz v3, :cond_6

    .line 122
    aget-object v3, v1, v2

    invoke-virtual {p0, v3}, Lorg/checkerframework/org/plumelib/util/LimitedSizeSet;->add(Ljava/lang/Object;)V

    .line 123
    invoke-virtual {p0}, Lorg/checkerframework/org/plumelib/util/LimitedSizeSet;->repNulled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 124
    return-void

    .line 119
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 121
    :cond_6
    new-instance v3, Ljava/lang/AssertionError;

    const-string v4, "@AssumeAssertion(nullness): used portion of array"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 127
    .end local v2    # "i":I
    :cond_7
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 25
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/LimitedSizeSet;, "Lorg/checkerframework/org/plumelib/util/LimitedSizeSet<TT;>;"
    invoke-virtual {p0}, Lorg/checkerframework/org/plumelib/util/LimitedSizeSet;->clone()Lorg/checkerframework/org/plumelib/util/LimitedSizeSet;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/checkerframework/org/plumelib/util/LimitedSizeSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/org/plumelib/util/LimitedSizeSet<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 210
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/LimitedSizeSet;, "Lorg/checkerframework/org/plumelib/util/LimitedSizeSet<TT;>;"
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/plumelib/util/LimitedSizeSet;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    .local v0, "resultAsLss":Lorg/checkerframework/org/plumelib/util/LimitedSizeSet;, "Lorg/checkerframework/org/plumelib/util/LimitedSizeSet<TT;>;"
    nop

    .line 214
    .local v0, "result":Lorg/checkerframework/org/plumelib/util/LimitedSizeSet;, "Lorg/checkerframework/org/plumelib/util/LimitedSizeSet<TT;>;"
    nop

    .line 215
    iget-object v1, p0, Lorg/checkerframework/org/plumelib/util/LimitedSizeSet;->values:[Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 216
    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, v0, Lorg/checkerframework/org/plumelib/util/LimitedSizeSet;->values:[Ljava/lang/Object;

    .line 218
    :cond_0
    return-object v0

    .line 212
    .end local v0    # "result":Lorg/checkerframework/org/plumelib/util/LimitedSizeSet;, "Lorg/checkerframework/org/plumelib/util/LimitedSizeSet<TT;>;"
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1}, Ljava/lang/Error;-><init>()V

    throw v1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 138
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/LimitedSizeSet;, "Lorg/checkerframework/org/plumelib/util/LimitedSizeSet<TT;>;"
    .local p1, "elt":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lorg/checkerframework/org/plumelib/util/LimitedSizeSet;->repNulled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 141
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/checkerframework/org/plumelib/util/LimitedSizeSet;->numValues:I

    if-ge v0, v1, :cond_1

    .line 142
    iget-object v1, p0, Lorg/checkerframework/org/plumelib/util/LimitedSizeSet;->values:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    const/4 v1, 0x1

    return v1

    .line 141
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 146
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 139
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public maxSize()I
    .locals 1

    .line 169
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/LimitedSizeSet;, "Lorg/checkerframework/org/plumelib/util/LimitedSizeSet<TT;>;"
    invoke-virtual {p0}, Lorg/checkerframework/org/plumelib/util/LimitedSizeSet;->repNulled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    iget v0, p0, Lorg/checkerframework/org/plumelib/util/LimitedSizeSet;->numValues:I

    return v0

    .line 172
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/LimitedSizeSet;->values:[Ljava/lang/Object;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public repNulled()Z
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "values"
        }
        result = false
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 185
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/LimitedSizeSet;, "Lorg/checkerframework/org/plumelib/util/LimitedSizeSet<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/LimitedSizeSet;->values:[Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public size()I
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 157
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/LimitedSizeSet;, "Lorg/checkerframework/org/plumelib/util/LimitedSizeSet<TT;>;"
    iget v0, p0, Lorg/checkerframework/org/plumelib/util/LimitedSizeSet;->numValues:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 242
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/LimitedSizeSet;, "Lorg/checkerframework/org/plumelib/util/LimitedSizeSet<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 243
    invoke-virtual {p0}, Lorg/checkerframework/org/plumelib/util/LimitedSizeSet;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 245
    invoke-virtual {p0}, Lorg/checkerframework/org/plumelib/util/LimitedSizeSet;->repNulled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/checkerframework/org/plumelib/util/LimitedSizeSet;->values:[Ljava/lang/Object;

    invoke-static {v1}, Lorg/checkerframework/org/plumelib/util/ArraysPlume;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 242
    return-object v0
.end method
