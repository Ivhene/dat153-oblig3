.class public Lorg/checkerframework/org/plumelib/util/LimitedSizeIntSet;
.super Ljava/lang/Object;
.source "LimitedSizeIntSet.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static assertsEnabled:Z = false

.field static final serialVersionUID:J = 0x131a62dL


# instance fields
.field numValues:I

.field protected values:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    nop

    .line 47
    const/4 v0, 0x0

    sput-boolean v0, Lorg/checkerframework/org/plumelib/util/LimitedSizeIntSet;->assertsEnabled:Z

    .line 50
    const/4 v0, 0x1

    sput-boolean v0, Lorg/checkerframework/org/plumelib/util/LimitedSizeIntSet;->assertsEnabled:Z

    .line 52
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "maxValues"    # I

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    sget-boolean v0, Lorg/checkerframework/org/plumelib/util/LimitedSizeIntSet;->assertsEnabled:Z

    if-eqz v0, :cond_1

    if-lez p1, :cond_0

    goto :goto_0

    .line 61
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
    new-array v0, p1, [I

    iput-object v0, p0, Lorg/checkerframework/org/plumelib/util/LimitedSizeIntSet;->values:[I

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lorg/checkerframework/org/plumelib/util/LimitedSizeIntSet;->numValues:I

    .line 66
    return-void
.end method

.method public static merge(ILjava/util/List;)Lorg/checkerframework/org/plumelib/util/LimitedSizeIntSet;
    .locals 3
    .param p0, "maxValues"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lorg/checkerframework/org/plumelib/util/LimitedSizeIntSet;",
            ">;)",
            "Lorg/checkerframework/org/plumelib/util/LimitedSizeIntSet;"
        }
    .end annotation

    .line 230
    .local p1, "slist":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/org/plumelib/util/LimitedSizeIntSet;>;"
    new-instance v0, Lorg/checkerframework/org/plumelib/util/LimitedSizeIntSet;

    invoke-direct {v0, p0}, Lorg/checkerframework/org/plumelib/util/LimitedSizeIntSet;-><init>(I)V

    .line 231
    .local v0, "result":Lorg/checkerframework/org/plumelib/util/LimitedSizeIntSet;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/org/plumelib/util/LimitedSizeIntSet;

    .line 232
    .local v2, "s":Lorg/checkerframework/org/plumelib/util/LimitedSizeIntSet;
    invoke-virtual {v0, v2}, Lorg/checkerframework/org/plumelib/util/LimitedSizeIntSet;->addAll(Lorg/checkerframework/org/plumelib/util/LimitedSizeIntSet;)V

    .line 233
    .end local v2    # "s":Lorg/checkerframework/org/plumelib/util/LimitedSizeIntSet;
    goto :goto_0

    .line 234
    :cond_0
    return-object v0
.end method

.method private nullRep()V
    .locals 1

    .line 197
    invoke-virtual {p0}, Lorg/checkerframework/org/plumelib/util/LimitedSizeIntSet;->repNulled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    return-void

    .line 200
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/LimitedSizeIntSet;->values:[I

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/checkerframework/org/plumelib/util/LimitedSizeIntSet;->numValues:I

    .line 201
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/org/plumelib/util/LimitedSizeIntSet;->values:[I

    .line 202
    return-void
.end method


# virtual methods
.method public add(I)V
    .locals 3
    .param p1, "elt"    # I

    .line 74
    invoke-virtual {p0}, Lorg/checkerframework/org/plumelib/util/LimitedSizeIntSet;->repNulled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    return-void

    .line 78
    :cond_0
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/plumelib/util/LimitedSizeIntSet;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    return-void

    .line 81
    :cond_1
    iget v0, p0, Lorg/checkerframework/org/plumelib/util/LimitedSizeIntSet;->numValues:I

    iget-object v1, p0, Lorg/checkerframework/org/plumelib/util/LimitedSizeIntSet;->values:[I

    array-length v2, v1

    if-ne v0, v2, :cond_2

    .line 82
    invoke-direct {p0}, Lorg/checkerframework/org/plumelib/util/LimitedSizeIntSet;->nullRep()V

    .line 83
    return-void

    .line 85
    :cond_2
    aput p1, v1, v0

    .line 86
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/checkerframework/org/plumelib/util/LimitedSizeIntSet;->numValues:I

    .line 87
    return-void
.end method

.method public addAll(Lorg/checkerframework/org/plumelib/util/LimitedSizeIntSet;)V
    .locals 5
    .param p1, "s"    # Lorg/checkerframework/org/plumelib/util/LimitedSizeIntSet;

    .line 96
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 97
    .local v0, "sameObject":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 98
    return-void

    .line 100
    :cond_1
    invoke-virtual {p0}, Lorg/checkerframework/org/plumelib/util/LimitedSizeIntSet;->repNulled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 101
    return-void

    .line 103
    :cond_2
    invoke-virtual {p1}, Lorg/checkerframework/org/plumelib/util/LimitedSizeIntSet;->repNulled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 107
    invoke-virtual {p1}, Lorg/checkerframework/org/plumelib/util/LimitedSizeIntSet;->size()I

    move-result v1

    iget-object v2, p0, Lorg/checkerframework/org/plumelib/util/LimitedSizeIntSet;->values:[I

    array-length v2, v2

    if-le v1, v2, :cond_3

    .line 108
    invoke-direct {p0}, Lorg/checkerframework/org/plumelib/util/LimitedSizeIntSet;->nullRep()V

    .line 109
    return-void

    .line 111
    :cond_3
    new-instance v1, Ljava/lang/Error;

    const-string v2, "Arg is rep-nulled, so we don\'t know its values and can\'t add them to this."

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 117
    :cond_4
    iget-object v1, p1, Lorg/checkerframework/org/plumelib/util/LimitedSizeIntSet;->values:[I

    .line 118
    .local v1, "svalues":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {p1}, Lorg/checkerframework/org/plumelib/util/LimitedSizeIntSet;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 123
    move v3, v2

    .line 124
    .local v3, "index":I
    aget v4, v1, v3

    invoke-virtual {p0, v4}, Lorg/checkerframework/org/plumelib/util/LimitedSizeIntSet;->add(I)V

    .line 125
    invoke-virtual {p0}, Lorg/checkerframework/org/plumelib/util/LimitedSizeIntSet;->repNulled()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 126
    return-void

    .line 118
    .end local v3    # "index":I
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 129
    .end local v2    # "i":I
    :cond_6
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

    .line 30
    invoke-virtual {p0}, Lorg/checkerframework/org/plumelib/util/LimitedSizeIntSet;->clone()Lorg/checkerframework/org/plumelib/util/LimitedSizeIntSet;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/checkerframework/org/plumelib/util/LimitedSizeIntSet;
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 211
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/plumelib/util/LimitedSizeIntSet;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    .local v0, "result":Lorg/checkerframework/org/plumelib/util/LimitedSizeIntSet;
    nop

    .line 215
    iget-object v1, p0, Lorg/checkerframework/org/plumelib/util/LimitedSizeIntSet;->values:[I

    if-eqz v1, :cond_0

    .line 216
    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Lorg/checkerframework/org/plumelib/util/LimitedSizeIntSet;->values:[I

    .line 218
    :cond_0
    return-object v0

    .line 212
    .end local v0    # "result":Lorg/checkerframework/org/plumelib/util/LimitedSizeIntSet;
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1}, Ljava/lang/Error;-><init>()V

    throw v1
.end method

.method public contains(I)Z
    .locals 2
    .param p1, "elt"    # I
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 140
    invoke-virtual {p0}, Lorg/checkerframework/org/plumelib/util/LimitedSizeIntSet;->repNulled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 143
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/checkerframework/org/plumelib/util/LimitedSizeIntSet;->numValues:I

    if-ge v0, v1, :cond_1

    .line 144
    iget-object v1, p0, Lorg/checkerframework/org/plumelib/util/LimitedSizeIntSet;->values:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 145
    const/4 v1, 0x1

    return v1

    .line 143
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 148
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 141
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public maxSize()I
    .locals 1

    .line 171
    invoke-virtual {p0}, Lorg/checkerframework/org/plumelib/util/LimitedSizeIntSet;->repNulled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget v0, p0, Lorg/checkerframework/org/plumelib/util/LimitedSizeIntSet;->numValues:I

    return v0

    .line 174
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/LimitedSizeIntSet;->values:[I

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

    .line 187
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/LimitedSizeIntSet;->values:[I

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

    .line 159
    iget v0, p0, Lorg/checkerframework/org/plumelib/util/LimitedSizeIntSet;->numValues:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/checkerframework/org/plumelib/util/LimitedSizeIntSet;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/org/plumelib/util/LimitedSizeIntSet;->values:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
