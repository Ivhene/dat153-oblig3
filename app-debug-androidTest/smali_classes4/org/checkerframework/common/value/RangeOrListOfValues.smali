.class Lorg/checkerframework/common/value/RangeOrListOfValues;
.super Ljava/lang/Object;
.source "RangeOrListOfValues.java"


# instance fields
.field private isRange:Z

.field private range:Lorg/checkerframework/common/value/util/Range;

.field private values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 29
    .local p1, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/common/value/RangeOrListOfValues;->values:Ljava/util/List;

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/checkerframework/common/value/RangeOrListOfValues;->isRange:Z

    .line 32
    invoke-virtual {p0, p1}, Lorg/checkerframework/common/value/RangeOrListOfValues;->addAll(Ljava/util/List;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/common/value/util/Range;)V
    .locals 1
    .param p1, "range"    # Lorg/checkerframework/common/value/util/Range;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/checkerframework/common/value/RangeOrListOfValues;->range:Lorg/checkerframework/common/value/util/Range;

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/checkerframework/common/value/RangeOrListOfValues;->isRange:Z

    .line 38
    return-void
.end method

.method public static convertLongsToInts(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 91
    .local p0, "newValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 92
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 93
    .local v2, "l":Ljava/lang/Long;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/32 v5, 0x7fffffff

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 94
    const v3, 0x7fffffff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 95
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/32 v5, -0x80000000

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    .line 96
    const/high16 v3, -0x80000000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 98
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    .end local v2    # "l":Ljava/lang/Long;
    :goto_1
    goto :goto_0

    .line 101
    :cond_2
    return-object v0
.end method


# virtual methods
.method public add(Lorg/checkerframework/common/value/util/Range;)V
    .locals 1
    .param p1, "otherRange"    # Lorg/checkerframework/common/value/util/Range;

    .line 41
    iget-boolean v0, p0, Lorg/checkerframework/common/value/RangeOrListOfValues;->isRange:Z

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lorg/checkerframework/common/value/RangeOrListOfValues;->range:Lorg/checkerframework/common/value/util/Range;

    invoke-virtual {v0, p1}, Lorg/checkerframework/common/value/util/Range;->union(Lorg/checkerframework/common/value/util/Range;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/common/value/RangeOrListOfValues;->range:Lorg/checkerframework/common/value/util/Range;

    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {p0}, Lorg/checkerframework/common/value/RangeOrListOfValues;->convertToRange()V

    .line 45
    invoke-virtual {p0, p1}, Lorg/checkerframework/common/value/RangeOrListOfValues;->add(Lorg/checkerframework/common/value/util/Range;)V

    .line 47
    :goto_0
    return-void
.end method

.method public addAll(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 60
    .local p1, "newValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-boolean v0, p0, Lorg/checkerframework/common/value/RangeOrListOfValues;->isRange:Z

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lorg/checkerframework/common/value/RangeOrListOfValues;->range:Lorg/checkerframework/common/value/util/Range;

    invoke-static {p1}, Lorg/checkerframework/common/value/util/Range;->create(Ljava/util/Collection;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/common/value/util/Range;->union(Lorg/checkerframework/common/value/util/Range;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/common/value/RangeOrListOfValues;->range:Lorg/checkerframework/common/value/util/Range;

    goto :goto_1

    .line 63
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 64
    .local v1, "i":Ljava/lang/Integer;
    iget-object v2, p0, Lorg/checkerframework/common/value/RangeOrListOfValues;->values:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 65
    iget-object v2, p0, Lorg/checkerframework/common/value/RangeOrListOfValues;->values:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    .end local v1    # "i":Ljava/lang/Integer;
    :cond_1
    goto :goto_0

    .line 68
    :cond_2
    iget-object v0, p0, Lorg/checkerframework/common/value/RangeOrListOfValues;->values:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_3

    .line 69
    invoke-virtual {p0}, Lorg/checkerframework/common/value/RangeOrListOfValues;->convertToRange()V

    .line 72
    :cond_3
    :goto_1
    return-void
.end method

.method public convertToRange()V
    .locals 1

    .line 109
    iget-boolean v0, p0, Lorg/checkerframework/common/value/RangeOrListOfValues;->isRange:Z

    if-nez v0, :cond_0

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/checkerframework/common/value/RangeOrListOfValues;->isRange:Z

    .line 111
    iget-object v0, p0, Lorg/checkerframework/common/value/RangeOrListOfValues;->values:Ljava/util/List;

    invoke-static {v0}, Lorg/checkerframework/common/value/util/Range;->create(Ljava/util/Collection;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/common/value/RangeOrListOfValues;->range:Lorg/checkerframework/common/value/util/Range;

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/common/value/RangeOrListOfValues;->values:Ljava/util/List;

    .line 114
    :cond_0
    return-void
.end method

.method public createAnnotation(Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 1
    .param p1, "atypefactory"    # Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    .line 79
    iget-boolean v0, p0, Lorg/checkerframework/common/value/RangeOrListOfValues;->isRange:Z

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lorg/checkerframework/common/value/RangeOrListOfValues;->range:Lorg/checkerframework/common/value/util/Range;

    invoke-virtual {p1, v0}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->createArrayLenRangeAnnotation(Lorg/checkerframework/common/value/util/Range;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    return-object v0

    .line 82
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/common/value/RangeOrListOfValues;->values:Ljava/util/List;

    invoke-virtual {p1, v0}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->createArrayLenAnnotation(Ljava/util/List;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 118
    iget-boolean v0, p0, Lorg/checkerframework/common/value/RangeOrListOfValues;->isRange:Z

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lorg/checkerframework/common/value/RangeOrListOfValues;->range:Lorg/checkerframework/common/value/util/Range;

    invoke-virtual {v0}, Lorg/checkerframework/common/value/util/Range;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 121
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/common/value/RangeOrListOfValues;->values:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    const-string v0, "[]"

    return-object v0

    .line 124
    :cond_1
    const-string v0, "["

    .line 125
    .local v0, "res":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    iget-object v3, p0, Lorg/checkerframework/common/value/RangeOrListOfValues;->values:Ljava/util/List;

    invoke-static {v2, v3}, Lorg/checkerframework/javacutil/PluginUtil;->join(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 127
    return-object v0
.end method
