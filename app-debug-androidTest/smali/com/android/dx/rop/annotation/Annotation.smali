.class public final Lcom/android/dx/rop/annotation/Annotation;
.super Lcom/android/dx/util/MutabilityControl;
.source "Annotation.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lcom/android/dx/util/ToHuman;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/dx/util/MutabilityControl;",
        "Ljava/lang/Comparable<",
        "Lcom/android/dx/rop/annotation/Annotation;",
        ">;",
        "Lcom/android/dx/util/ToHuman;"
    }
.end annotation


# instance fields
.field private final elements:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Lcom/android/dx/rop/cst/CstString;",
            "Lcom/android/dx/rop/annotation/NameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private final type:Lcom/android/dx/rop/cst/CstType;

.field private final visibility:Lcom/android/dx/rop/annotation/AnnotationVisibility;


# direct methods
.method public constructor <init>(Lcom/android/dx/rop/cst/CstType;Lcom/android/dx/rop/annotation/AnnotationVisibility;)V
    .locals 2
    .param p1, "type"    # Lcom/android/dx/rop/cst/CstType;
    .param p2, "visibility"    # Lcom/android/dx/rop/annotation/AnnotationVisibility;

    .line 50
    invoke-direct {p0}, Lcom/android/dx/util/MutabilityControl;-><init>()V

    .line 51
    if-eqz p1, :cond_1

    .line 55
    if-eqz p2, :cond_0

    .line 59
    iput-object p1, p0, Lcom/android/dx/rop/annotation/Annotation;->type:Lcom/android/dx/rop/cst/CstType;

    .line 60
    iput-object p2, p0, Lcom/android/dx/rop/annotation/Annotation;->visibility:Lcom/android/dx/rop/annotation/AnnotationVisibility;

    .line 61
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/dx/rop/annotation/Annotation;->elements:Ljava/util/TreeMap;

    .line 62
    return-void

    .line 56
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "visibility == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "type == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public add(Lcom/android/dx/rop/annotation/NameValuePair;)V
    .locals 4
    .param p1, "pair"    # Lcom/android/dx/rop/annotation/NameValuePair;

    .line 202
    invoke-virtual {p0}, Lcom/android/dx/rop/annotation/Annotation;->throwIfImmutable()V

    .line 204
    if-eqz p1, :cond_1

    .line 208
    invoke-virtual {p1}, Lcom/android/dx/rop/annotation/NameValuePair;->getName()Lcom/android/dx/rop/cst/CstString;

    move-result-object v0

    .line 210
    .local v0, "name":Lcom/android/dx/rop/cst/CstString;
    iget-object v1, p0, Lcom/android/dx/rop/annotation/Annotation;->elements:Ljava/util/TreeMap;

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 214
    iget-object v1, p0, Lcom/android/dx/rop/annotation/Annotation;->elements:Ljava/util/TreeMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    return-void

    .line 211
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "name already added: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 205
    .end local v0    # "name":Lcom/android/dx/rop/cst/CstString;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "pair == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public compareTo(Lcom/android/dx/rop/annotation/Annotation;)I
    .locals 5
    .param p1, "other"    # Lcom/android/dx/rop/annotation/Annotation;

    .line 93
    iget-object v0, p0, Lcom/android/dx/rop/annotation/Annotation;->type:Lcom/android/dx/rop/cst/CstType;

    iget-object v1, p1, Lcom/android/dx/rop/annotation/Annotation;->type:Lcom/android/dx/rop/cst/CstType;

    invoke-virtual {v0, v1}, Lcom/android/dx/rop/cst/CstType;->compareTo(Lcom/android/dx/rop/cst/Constant;)I

    move-result v0

    .line 95
    .local v0, "result":I
    if-eqz v0, :cond_0

    .line 96
    return v0

    .line 99
    :cond_0
    iget-object v1, p0, Lcom/android/dx/rop/annotation/Annotation;->visibility:Lcom/android/dx/rop/annotation/AnnotationVisibility;

    iget-object v2, p1, Lcom/android/dx/rop/annotation/Annotation;->visibility:Lcom/android/dx/rop/annotation/AnnotationVisibility;

    invoke-virtual {v1, v2}, Lcom/android/dx/rop/annotation/AnnotationVisibility;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    .line 101
    if-eqz v0, :cond_1

    .line 102
    return v0

    .line 105
    :cond_1
    iget-object v1, p0, Lcom/android/dx/rop/annotation/Annotation;->elements:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 106
    .local v1, "thisIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/dx/rop/annotation/NameValuePair;>;"
    iget-object v2, p1, Lcom/android/dx/rop/annotation/Annotation;->elements:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 108
    .local v2, "otherIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/dx/rop/annotation/NameValuePair;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 109
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/dx/rop/annotation/NameValuePair;

    .line 110
    .local v3, "thisOne":Lcom/android/dx/rop/annotation/NameValuePair;
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/dx/rop/annotation/NameValuePair;

    .line 112
    .local v4, "otherOne":Lcom/android/dx/rop/annotation/NameValuePair;
    invoke-virtual {v3, v4}, Lcom/android/dx/rop/annotation/NameValuePair;->compareTo(Lcom/android/dx/rop/annotation/NameValuePair;)I

    move-result v0

    .line 113
    if-eqz v0, :cond_2

    .line 114
    return v0

    .line 116
    .end local v3    # "thisOne":Lcom/android/dx/rop/annotation/NameValuePair;
    .end local v4    # "otherOne":Lcom/android/dx/rop/annotation/NameValuePair;
    :cond_2
    goto :goto_0

    .line 118
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 119
    const/4 v3, 0x1

    return v3

    .line 120
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 121
    const/4 v3, -0x1

    return v3

    .line 124
    :cond_5
    const/4 v3, 0x0

    return v3
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 33
    check-cast p1, Lcom/android/dx/rop/annotation/Annotation;

    invoke-virtual {p0, p1}, Lcom/android/dx/rop/annotation/Annotation;->compareTo(Lcom/android/dx/rop/annotation/Annotation;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 67
    instance-of v0, p1, Lcom/android/dx/rop/annotation/Annotation;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 68
    return v1

    .line 71
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/dx/rop/annotation/Annotation;

    .line 73
    .local v0, "otherAnnotation":Lcom/android/dx/rop/annotation/Annotation;
    iget-object v2, p0, Lcom/android/dx/rop/annotation/Annotation;->type:Lcom/android/dx/rop/cst/CstType;

    iget-object v3, v0, Lcom/android/dx/rop/annotation/Annotation;->type:Lcom/android/dx/rop/cst/CstType;

    invoke-virtual {v2, v3}, Lcom/android/dx/rop/cst/CstType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/dx/rop/annotation/Annotation;->visibility:Lcom/android/dx/rop/annotation/AnnotationVisibility;

    iget-object v3, v0, Lcom/android/dx/rop/annotation/Annotation;->visibility:Lcom/android/dx/rop/annotation/AnnotationVisibility;

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 78
    :cond_1
    iget-object v1, p0, Lcom/android/dx/rop/annotation/Annotation;->elements:Ljava/util/TreeMap;

    iget-object v2, v0, Lcom/android/dx/rop/annotation/Annotation;->elements:Ljava/util/TreeMap;

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 75
    :cond_2
    :goto_0
    return v1
.end method

.method public getNameValuePairs()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/dx/rop/annotation/NameValuePair;",
            ">;"
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lcom/android/dx/rop/annotation/Annotation;->elements:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/android/dx/rop/cst/CstType;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/android/dx/rop/annotation/Annotation;->type:Lcom/android/dx/rop/cst/CstType;

    return-object v0
.end method

.method public getVisibility()Lcom/android/dx/rop/annotation/AnnotationVisibility;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/android/dx/rop/annotation/Annotation;->visibility:Lcom/android/dx/rop/annotation/AnnotationVisibility;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 84
    iget-object v0, p0, Lcom/android/dx/rop/annotation/Annotation;->type:Lcom/android/dx/rop/cst/CstType;

    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstType;->hashCode()I

    move-result v0

    .line 85
    .local v0, "hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/dx/rop/annotation/Annotation;->elements:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 86
    .end local v0    # "hash":I
    .local v1, "hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/android/dx/rop/annotation/Annotation;->visibility:Lcom/android/dx/rop/annotation/AnnotationVisibility;

    invoke-virtual {v2}, Lcom/android/dx/rop/annotation/AnnotationVisibility;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 87
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    return v0
.end method

.method public put(Lcom/android/dx/rop/annotation/NameValuePair;)V
    .locals 2
    .param p1, "pair"    # Lcom/android/dx/rop/annotation/NameValuePair;

    .line 185
    invoke-virtual {p0}, Lcom/android/dx/rop/annotation/Annotation;->throwIfImmutable()V

    .line 187
    if-eqz p1, :cond_0

    .line 191
    iget-object v0, p0, Lcom/android/dx/rop/annotation/Annotation;->elements:Ljava/util/TreeMap;

    invoke-virtual {p1}, Lcom/android/dx/rop/annotation/NameValuePair;->getName()Lcom/android/dx/rop/cst/CstString;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    return-void

    .line 188
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "pair == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toHuman()Ljava/lang/String;
    .locals 5

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/dx/rop/annotation/Annotation;->visibility:Lcom/android/dx/rop/annotation/AnnotationVisibility;

    invoke-virtual {v1}, Lcom/android/dx/rop/annotation/AnnotationVisibility;->toHuman()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    const-string v1, "-annotation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    iget-object v1, p0, Lcom/android/dx/rop/annotation/Annotation;->type:Lcom/android/dx/rop/cst/CstType;

    invoke-virtual {v1}, Lcom/android/dx/rop/cst/CstType;->toHuman()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    const-string v1, " {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    const/4 v1, 0x1

    .line 144
    .local v1, "first":Z
    iget-object v2, p0, Lcom/android/dx/rop/annotation/Annotation;->elements:Ljava/util/TreeMap;

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

    check-cast v3, Lcom/android/dx/rop/annotation/NameValuePair;

    .line 145
    .local v3, "pair":Lcom/android/dx/rop/annotation/NameValuePair;
    if-eqz v1, :cond_0

    .line 146
    const/4 v1, 0x0

    goto :goto_1

    .line 148
    :cond_0
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    :goto_1
    invoke-virtual {v3}, Lcom/android/dx/rop/annotation/NameValuePair;->getName()Lcom/android/dx/rop/cst/CstString;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/dx/rop/cst/CstString;->toHuman()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    const-string v4, ": "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {v3}, Lcom/android/dx/rop/annotation/NameValuePair;->getValue()Lcom/android/dx/rop/cst/Constant;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/dx/rop/cst/Constant;->toHuman()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .end local v3    # "pair":Lcom/android/dx/rop/annotation/NameValuePair;
    goto :goto_0

    .line 155
    :cond_1
    const-string v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 130
    invoke-virtual {p0}, Lcom/android/dx/rop/annotation/Annotation;->toHuman()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
