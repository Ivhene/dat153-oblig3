.class public final Lcom/android/dx/rop/annotation/Annotations;
.super Lcom/android/dx/util/MutabilityControl;
.source "Annotations.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/dx/util/MutabilityControl;",
        "Ljava/lang/Comparable<",
        "Lcom/android/dx/rop/annotation/Annotations;",
        ">;"
    }
.end annotation


# static fields
.field public static final EMPTY:Lcom/android/dx/rop/annotation/Annotations;


# instance fields
.field private final annotations:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Lcom/android/dx/rop/cst/CstType;",
            "Lcom/android/dx/rop/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lcom/android/dx/rop/annotation/Annotations;

    invoke-direct {v0}, Lcom/android/dx/rop/annotation/Annotations;-><init>()V

    sput-object v0, Lcom/android/dx/rop/annotation/Annotations;->EMPTY:Lcom/android/dx/rop/annotation/Annotations;

    .line 35
    invoke-virtual {v0}, Lcom/android/dx/rop/annotation/Annotations;->setImmutable()V

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 85
    invoke-direct {p0}, Lcom/android/dx/util/MutabilityControl;-><init>()V

    .line 86
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/dx/rop/annotation/Annotations;->annotations:Ljava/util/TreeMap;

    .line 87
    return-void
.end method

.method public static combine(Lcom/android/dx/rop/annotation/Annotations;Lcom/android/dx/rop/annotation/Annotation;)Lcom/android/dx/rop/annotation/Annotations;
    .locals 1
    .param p0, "annotations"    # Lcom/android/dx/rop/annotation/Annotations;
    .param p1, "annotation"    # Lcom/android/dx/rop/annotation/Annotation;

    .line 73
    new-instance v0, Lcom/android/dx/rop/annotation/Annotations;

    invoke-direct {v0}, Lcom/android/dx/rop/annotation/Annotations;-><init>()V

    .line 75
    .local v0, "result":Lcom/android/dx/rop/annotation/Annotations;
    invoke-virtual {v0, p0}, Lcom/android/dx/rop/annotation/Annotations;->addAll(Lcom/android/dx/rop/annotation/Annotations;)V

    .line 76
    invoke-virtual {v0, p1}, Lcom/android/dx/rop/annotation/Annotations;->add(Lcom/android/dx/rop/annotation/Annotation;)V

    .line 77
    invoke-virtual {v0}, Lcom/android/dx/rop/annotation/Annotations;->setImmutable()V

    .line 79
    return-object v0
.end method

.method public static combine(Lcom/android/dx/rop/annotation/Annotations;Lcom/android/dx/rop/annotation/Annotations;)Lcom/android/dx/rop/annotation/Annotations;
    .locals 1
    .param p0, "a1"    # Lcom/android/dx/rop/annotation/Annotations;
    .param p1, "a2"    # Lcom/android/dx/rop/annotation/Annotations;

    .line 52
    new-instance v0, Lcom/android/dx/rop/annotation/Annotations;

    invoke-direct {v0}, Lcom/android/dx/rop/annotation/Annotations;-><init>()V

    .line 54
    .local v0, "result":Lcom/android/dx/rop/annotation/Annotations;
    invoke-virtual {v0, p0}, Lcom/android/dx/rop/annotation/Annotations;->addAll(Lcom/android/dx/rop/annotation/Annotations;)V

    .line 55
    invoke-virtual {v0, p1}, Lcom/android/dx/rop/annotation/Annotations;->addAll(Lcom/android/dx/rop/annotation/Annotations;)V

    .line 56
    invoke-virtual {v0}, Lcom/android/dx/rop/annotation/Annotations;->setImmutable()V

    .line 58
    return-object v0
.end method


# virtual methods
.method public add(Lcom/android/dx/rop/annotation/Annotation;)V
    .locals 4
    .param p1, "annotation"    # Lcom/android/dx/rop/annotation/Annotation;

    .line 170
    invoke-virtual {p0}, Lcom/android/dx/rop/annotation/Annotations;->throwIfImmutable()V

    .line 172
    if-eqz p1, :cond_1

    .line 176
    invoke-virtual {p1}, Lcom/android/dx/rop/annotation/Annotation;->getType()Lcom/android/dx/rop/cst/CstType;

    move-result-object v0

    .line 178
    .local v0, "type":Lcom/android/dx/rop/cst/CstType;
    iget-object v1, p0, Lcom/android/dx/rop/annotation/Annotations;->annotations:Ljava/util/TreeMap;

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 183
    iget-object v1, p0, Lcom/android/dx/rop/annotation/Annotations;->annotations:Ljava/util/TreeMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    return-void

    .line 179
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "duplicate type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 180
    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstType;->toHuman()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 173
    .end local v0    # "type":Lcom/android/dx/rop/cst/CstType;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "annotation == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addAll(Lcom/android/dx/rop/annotation/Annotations;)V
    .locals 2
    .param p1, "toAdd"    # Lcom/android/dx/rop/annotation/Annotations;

    .line 194
    invoke-virtual {p0}, Lcom/android/dx/rop/annotation/Annotations;->throwIfImmutable()V

    .line 196
    if-eqz p1, :cond_1

    .line 200
    iget-object v0, p1, Lcom/android/dx/rop/annotation/Annotations;->annotations:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dx/rop/annotation/Annotation;

    .line 201
    .local v1, "a":Lcom/android/dx/rop/annotation/Annotation;
    invoke-virtual {p0, v1}, Lcom/android/dx/rop/annotation/Annotations;->add(Lcom/android/dx/rop/annotation/Annotation;)V

    .line 202
    .end local v1    # "a":Lcom/android/dx/rop/annotation/Annotation;
    goto :goto_0

    .line 203
    :cond_0
    return-void

    .line 197
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "toAdd == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public compareTo(Lcom/android/dx/rop/annotation/Annotations;)I
    .locals 5
    .param p1, "other"    # Lcom/android/dx/rop/annotation/Annotations;

    .line 110
    iget-object v0, p0, Lcom/android/dx/rop/annotation/Annotations;->annotations:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 111
    .local v0, "thisIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/dx/rop/annotation/Annotation;>;"
    iget-object v1, p1, Lcom/android/dx/rop/annotation/Annotations;->annotations:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 113
    .local v1, "otherIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/dx/rop/annotation/Annotation;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 114
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/dx/rop/annotation/Annotation;

    .line 115
    .local v2, "thisOne":Lcom/android/dx/rop/annotation/Annotation;
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/dx/rop/annotation/Annotation;

    .line 117
    .local v3, "otherOne":Lcom/android/dx/rop/annotation/Annotation;
    invoke-virtual {v2, v3}, Lcom/android/dx/rop/annotation/Annotation;->compareTo(Lcom/android/dx/rop/annotation/Annotation;)I

    move-result v4

    .line 118
    .local v4, "result":I
    if-eqz v4, :cond_0

    .line 119
    return v4

    .line 121
    .end local v2    # "thisOne":Lcom/android/dx/rop/annotation/Annotation;
    .end local v3    # "otherOne":Lcom/android/dx/rop/annotation/Annotation;
    .end local v4    # "result":I
    :cond_0
    goto :goto_0

    .line 123
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 124
    const/4 v2, 0x1

    return v2

    .line 125
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 126
    const/4 v2, -0x1

    return v2

    .line 129
    :cond_3
    const/4 v2, 0x0

    return v2
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 29
    check-cast p1, Lcom/android/dx/rop/annotation/Annotations;

    invoke-virtual {p0, p1}, Lcom/android/dx/rop/annotation/Annotations;->compareTo(Lcom/android/dx/rop/annotation/Annotations;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 98
    instance-of v0, p1, Lcom/android/dx/rop/annotation/Annotations;

    if-nez v0, :cond_0

    .line 99
    const/4 v0, 0x0

    return v0

    .line 102
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/dx/rop/annotation/Annotations;

    .line 104
    .local v0, "otherAnnotations":Lcom/android/dx/rop/annotation/Annotations;
    iget-object v1, p0, Lcom/android/dx/rop/annotation/Annotations;->annotations:Ljava/util/TreeMap;

    iget-object v2, v0, Lcom/android/dx/rop/annotation/Annotations;->annotations:Ljava/util/TreeMap;

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getAnnotations()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/dx/rop/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lcom/android/dx/rop/annotation/Annotations;->annotations:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/android/dx/rop/annotation/Annotations;->annotations:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->hashCode()I

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/android/dx/rop/annotation/Annotations;->annotations:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 138
    .local v1, "first":Z
    const-string v2, "annotations{"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    iget-object v2, p0, Lcom/android/dx/rop/annotation/Annotations;->annotations:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/dx/rop/annotation/Annotation;

    .line 141
    .local v3, "a":Lcom/android/dx/rop/annotation/Annotation;
    if-eqz v1, :cond_0

    .line 142
    const/4 v1, 0x0

    goto :goto_1

    .line 144
    :cond_0
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    :goto_1
    invoke-virtual {v3}, Lcom/android/dx/rop/annotation/Annotation;->toHuman()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .end local v3    # "a":Lcom/android/dx/rop/annotation/Annotation;
    goto :goto_0

    .line 149
    :cond_1
    const-string v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
