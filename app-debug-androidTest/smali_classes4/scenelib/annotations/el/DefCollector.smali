.class public abstract Lscenelib/annotations/el/DefCollector;
.super Ljava/lang/Object;
.source "DefCollector.java"


# instance fields
.field private final defs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lscenelib/annotations/el/AnnotationDef;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscenelib/annotations/el/AScene;)V
    .locals 1
    .param p1, "s"    # Lscenelib/annotations/el/AScene;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lscenelib/annotations/el/DefException;
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lscenelib/annotations/el/DefCollector;->defs:Ljava/util/Set;

    .line 33
    invoke-direct {p0, p1}, Lscenelib/annotations/el/DefCollector;->collect(Lscenelib/annotations/el/AScene;)V

    .line 34
    return-void
.end method

.method private addToDefs(Lscenelib/annotations/el/AnnotationDef;)V
    .locals 4
    .param p1, "d"    # Lscenelib/annotations/el/AnnotationDef;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lscenelib/annotations/el/DefException;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lscenelib/annotations/el/DefCollector;->defs:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    return-void

    .line 66
    :cond_0
    iget-object v0, p1, Lscenelib/annotations/el/AnnotationDef;->name:Ljava/lang/String;

    invoke-direct {p0, v0}, Lscenelib/annotations/el/DefCollector;->getDef(Ljava/lang/String;)Lscenelib/annotations/el/AnnotationDef;

    move-result-object v0

    .line 67
    .local v0, "oldD":Lscenelib/annotations/el/AnnotationDef;
    if-nez v0, :cond_1

    .line 68
    iget-object v1, p0, Lscenelib/annotations/el/DefCollector;->defs:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 70
    :cond_1
    invoke-static {v0, p1}, Lscenelib/annotations/el/AnnotationDef;->unify(Lscenelib/annotations/el/AnnotationDef;Lscenelib/annotations/el/AnnotationDef;)Lscenelib/annotations/el/AnnotationDef;

    move-result-object v1

    .line 71
    .local v1, "ud":Lscenelib/annotations/el/AnnotationDef;
    if-eqz v1, :cond_2

    .line 74
    iget-object v2, p0, Lscenelib/annotations/el/DefCollector;->defs:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 75
    iget-object v2, p0, Lscenelib/annotations/el/DefCollector;->defs:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 77
    .end local v1    # "ud":Lscenelib/annotations/el/AnnotationDef;
    :goto_0
    return-void

    .line 72
    .restart local v1    # "ud":Lscenelib/annotations/el/AnnotationDef;
    :cond_2
    new-instance v2, Lscenelib/annotations/el/DefException;

    iget-object v3, p1, Lscenelib/annotations/el/AnnotationDef;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v0, p1}, Lscenelib/annotations/el/DefException;-><init>(Ljava/lang/String;Lscenelib/annotations/el/AnnotationDef;Lscenelib/annotations/el/AnnotationDef;)V

    throw v2
.end method

.method private collect(Lscenelib/annotations/el/AClass;)V
    .locals 2
    .param p1, "c"    # Lscenelib/annotations/el/AClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lscenelib/annotations/el/DefException;
        }
    .end annotation

    .line 173
    invoke-direct {p0, p1}, Lscenelib/annotations/el/DefCollector;->collect(Lscenelib/annotations/el/ADeclaration;)V

    .line 174
    iget-object v0, p1, Lscenelib/annotations/el/AClass;->bounds:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscenelib/annotations/el/ATypeElement;

    .line 175
    .local v1, "b":Lscenelib/annotations/el/ATypeElement;
    invoke-direct {p0, v1}, Lscenelib/annotations/el/DefCollector;->collect(Lscenelib/annotations/el/ATypeElement;)V

    .line 176
    .end local v1    # "b":Lscenelib/annotations/el/ATypeElement;
    goto :goto_0

    .line 177
    :cond_0
    iget-object v0, p1, Lscenelib/annotations/el/AClass;->extendsImplements:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscenelib/annotations/el/ATypeElement;

    .line 178
    .local v1, "ei":Lscenelib/annotations/el/ATypeElement;
    invoke-direct {p0, v1}, Lscenelib/annotations/el/DefCollector;->collect(Lscenelib/annotations/el/ATypeElement;)V

    .line 179
    .end local v1    # "ei":Lscenelib/annotations/el/ATypeElement;
    goto :goto_1

    .line 180
    :cond_1
    iget-object v0, p1, Lscenelib/annotations/el/AClass;->methods:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscenelib/annotations/el/AMethod;

    .line 181
    .local v1, "m":Lscenelib/annotations/el/AMethod;
    invoke-direct {p0, v1}, Lscenelib/annotations/el/DefCollector;->collect(Lscenelib/annotations/el/AMethod;)V

    .line 182
    .end local v1    # "m":Lscenelib/annotations/el/AMethod;
    goto :goto_2

    .line 183
    :cond_2
    iget-object v0, p1, Lscenelib/annotations/el/AClass;->fields:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscenelib/annotations/el/AField;

    .line 184
    .local v1, "f":Lscenelib/annotations/el/AField;
    invoke-direct {p0, v1}, Lscenelib/annotations/el/DefCollector;->collect(Lscenelib/annotations/el/AField;)V

    .line 185
    .end local v1    # "f":Lscenelib/annotations/el/AField;
    goto :goto_3

    .line 186
    :cond_3
    return-void
.end method

.method private collect(Lscenelib/annotations/el/ADeclaration;)V
    .locals 2
    .param p1, "d"    # Lscenelib/annotations/el/ADeclaration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lscenelib/annotations/el/DefException;
        }
    .end annotation

    .line 132
    invoke-direct {p0, p1}, Lscenelib/annotations/el/DefCollector;->collect(Lscenelib/annotations/el/AElement;)V

    .line 133
    iget-object v0, p1, Lscenelib/annotations/el/ADeclaration;->insertAnnotations:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscenelib/annotations/el/ATypeElement;

    .line 134
    .local v1, "ia":Lscenelib/annotations/el/ATypeElement;
    invoke-direct {p0, v1}, Lscenelib/annotations/el/DefCollector;->collect(Lscenelib/annotations/el/ATypeElement;)V

    .line 135
    .end local v1    # "ia":Lscenelib/annotations/el/ATypeElement;
    goto :goto_0

    .line 136
    :cond_0
    iget-object v0, p1, Lscenelib/annotations/el/ADeclaration;->insertTypecasts:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscenelib/annotations/el/ATypeElementWithType;

    .line 137
    .local v1, "ic":Lscenelib/annotations/el/ATypeElementWithType;
    invoke-direct {p0, v1}, Lscenelib/annotations/el/DefCollector;->collect(Lscenelib/annotations/el/ATypeElement;)V

    .line 138
    .end local v1    # "ic":Lscenelib/annotations/el/ATypeElementWithType;
    goto :goto_1

    .line 139
    :cond_1
    return-void
.end method

.method private collect(Lscenelib/annotations/el/AElement;)V
    .locals 4
    .param p1, "e"    # Lscenelib/annotations/el/AElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lscenelib/annotations/el/DefException;
        }
    .end annotation

    .line 105
    iget-object v0, p1, Lscenelib/annotations/el/AElement;->tlAnnotationsHere:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscenelib/annotations/Annotation;

    .line 106
    .local v1, "tla":Lscenelib/annotations/Annotation;
    iget-object v2, v1, Lscenelib/annotations/Annotation;->def:Lscenelib/annotations/el/AnnotationDef;

    .line 107
    .local v2, "tld":Lscenelib/annotations/el/AnnotationDef;
    iget-object v3, p0, Lscenelib/annotations/el/DefCollector;->defs:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 108
    goto :goto_0

    .line 111
    :cond_0
    move-object v3, v2

    .line 112
    .local v3, "d":Lscenelib/annotations/el/AnnotationDef;
    invoke-direct {p0, v3}, Lscenelib/annotations/el/DefCollector;->collect(Lscenelib/annotations/el/AnnotationDef;)V

    .line 114
    invoke-direct {p0, v3}, Lscenelib/annotations/el/DefCollector;->addToDefs(Lscenelib/annotations/el/AnnotationDef;)V

    .line 115
    .end local v1    # "tla":Lscenelib/annotations/Annotation;
    .end local v2    # "tld":Lscenelib/annotations/el/AnnotationDef;
    .end local v3    # "d":Lscenelib/annotations/el/AnnotationDef;
    goto :goto_0

    .line 116
    :cond_1
    iget-object v0, p1, Lscenelib/annotations/el/AElement;->type:Lscenelib/annotations/el/ATypeElement;

    if-eqz v0, :cond_2

    .line 117
    iget-object v0, p1, Lscenelib/annotations/el/AElement;->type:Lscenelib/annotations/el/ATypeElement;

    invoke-direct {p0, v0}, Lscenelib/annotations/el/DefCollector;->collect(Lscenelib/annotations/el/ATypeElement;)V

    .line 120
    :cond_2
    return-void
.end method

.method private collect(Lscenelib/annotations/el/AField;)V
    .locals 0
    .param p1, "f"    # Lscenelib/annotations/el/AField;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lscenelib/annotations/el/DefException;
        }
    .end annotation

    .line 143
    invoke-direct {p0, p1}, Lscenelib/annotations/el/DefCollector;->collect(Lscenelib/annotations/el/ADeclaration;)V

    .line 144
    return-void
.end method

.method private collect(Lscenelib/annotations/el/AMethod;)V
    .locals 2
    .param p1, "m"    # Lscenelib/annotations/el/AMethod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lscenelib/annotations/el/DefException;
        }
    .end annotation

    .line 148
    iget-object v0, p1, Lscenelib/annotations/el/AMethod;->bounds:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscenelib/annotations/el/ATypeElement;

    .line 149
    .local v1, "b":Lscenelib/annotations/el/ATypeElement;
    invoke-direct {p0, v1}, Lscenelib/annotations/el/DefCollector;->collect(Lscenelib/annotations/el/ATypeElement;)V

    .line 150
    .end local v1    # "b":Lscenelib/annotations/el/ATypeElement;
    goto :goto_0

    .line 151
    :cond_0
    invoke-direct {p0, p1}, Lscenelib/annotations/el/DefCollector;->collect(Lscenelib/annotations/el/ADeclaration;)V

    .line 152
    iget-object v0, p1, Lscenelib/annotations/el/AMethod;->returnType:Lscenelib/annotations/el/ATypeElement;

    invoke-direct {p0, v0}, Lscenelib/annotations/el/DefCollector;->collect(Lscenelib/annotations/el/ATypeElement;)V

    .line 153
    iget-object v0, p1, Lscenelib/annotations/el/AMethod;->receiver:Lscenelib/annotations/el/AField;

    invoke-direct {p0, v0}, Lscenelib/annotations/el/DefCollector;->collect(Lscenelib/annotations/el/AField;)V

    .line 154
    iget-object v0, p1, Lscenelib/annotations/el/AMethod;->parameters:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscenelib/annotations/el/AElement;

    .line 155
    .local v1, "p":Lscenelib/annotations/el/AElement;
    invoke-direct {p0, v1}, Lscenelib/annotations/el/DefCollector;->collect(Lscenelib/annotations/el/AElement;)V

    .line 156
    .end local v1    # "p":Lscenelib/annotations/el/AElement;
    goto :goto_1

    .line 157
    :cond_1
    iget-object v0, p1, Lscenelib/annotations/el/AMethod;->body:Lscenelib/annotations/el/ABlock;

    iget-object v0, v0, Lscenelib/annotations/el/ABlock;->locals:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscenelib/annotations/el/AField;

    .line 158
    .local v1, "l":Lscenelib/annotations/el/AField;
    invoke-direct {p0, v1}, Lscenelib/annotations/el/DefCollector;->collect(Lscenelib/annotations/el/AField;)V

    .line 159
    .end local v1    # "l":Lscenelib/annotations/el/AField;
    goto :goto_2

    .line 160
    :cond_2
    iget-object v0, p1, Lscenelib/annotations/el/AMethod;->body:Lscenelib/annotations/el/ABlock;

    iget-object v0, v0, Lscenelib/annotations/el/ABlock;->typecasts:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscenelib/annotations/el/ATypeElement;

    .line 161
    .local v1, "tc":Lscenelib/annotations/el/ATypeElement;
    invoke-direct {p0, v1}, Lscenelib/annotations/el/DefCollector;->collect(Lscenelib/annotations/el/ATypeElement;)V

    .line 162
    .end local v1    # "tc":Lscenelib/annotations/el/ATypeElement;
    goto :goto_3

    .line 163
    :cond_3
    iget-object v0, p1, Lscenelib/annotations/el/AMethod;->body:Lscenelib/annotations/el/ABlock;

    iget-object v0, v0, Lscenelib/annotations/el/ABlock;->instanceofs:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscenelib/annotations/el/ATypeElement;

    .line 164
    .local v1, "i":Lscenelib/annotations/el/ATypeElement;
    invoke-direct {p0, v1}, Lscenelib/annotations/el/DefCollector;->collect(Lscenelib/annotations/el/ATypeElement;)V

    .line 165
    .end local v1    # "i":Lscenelib/annotations/el/ATypeElement;
    goto :goto_4

    .line 166
    :cond_4
    iget-object v0, p1, Lscenelib/annotations/el/AMethod;->body:Lscenelib/annotations/el/ABlock;

    iget-object v0, v0, Lscenelib/annotations/el/ABlock;->news:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscenelib/annotations/el/ATypeElement;

    .line 167
    .local v1, "n":Lscenelib/annotations/el/ATypeElement;
    invoke-direct {p0, v1}, Lscenelib/annotations/el/DefCollector;->collect(Lscenelib/annotations/el/ATypeElement;)V

    .line 168
    .end local v1    # "n":Lscenelib/annotations/el/ATypeElement;
    goto :goto_5

    .line 169
    :cond_5
    return-void
.end method

.method private collect(Lscenelib/annotations/el/AScene;)V
    .locals 2
    .param p1, "s"    # Lscenelib/annotations/el/AScene;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lscenelib/annotations/el/DefException;
        }
    .end annotation

    .line 52
    iget-object v0, p1, Lscenelib/annotations/el/AScene;->packages:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscenelib/annotations/el/AElement;

    .line 53
    .local v1, "p":Lscenelib/annotations/el/AElement;
    invoke-direct {p0, v1}, Lscenelib/annotations/el/DefCollector;->collect(Lscenelib/annotations/el/AElement;)V

    .line 54
    .end local v1    # "p":Lscenelib/annotations/el/AElement;
    goto :goto_0

    .line 55
    :cond_0
    iget-object v0, p1, Lscenelib/annotations/el/AScene;->classes:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscenelib/annotations/el/AClass;

    .line 56
    .local v1, "c":Lscenelib/annotations/el/AClass;
    invoke-direct {p0, v1}, Lscenelib/annotations/el/DefCollector;->collect(Lscenelib/annotations/el/AClass;)V

    .line 57
    .end local v1    # "c":Lscenelib/annotations/el/AClass;
    goto :goto_1

    .line 58
    :cond_1
    return-void
.end method

.method private collect(Lscenelib/annotations/el/ATypeElement;)V
    .locals 2
    .param p1, "e"    # Lscenelib/annotations/el/ATypeElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lscenelib/annotations/el/DefException;
        }
    .end annotation

    .line 124
    invoke-direct {p0, p1}, Lscenelib/annotations/el/DefCollector;->collect(Lscenelib/annotations/el/AElement;)V

    .line 125
    iget-object v0, p1, Lscenelib/annotations/el/ATypeElement;->innerTypes:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscenelib/annotations/el/AElement;

    .line 126
    .local v1, "it":Lscenelib/annotations/el/AElement;
    invoke-direct {p0, v1}, Lscenelib/annotations/el/DefCollector;->collect(Lscenelib/annotations/el/AElement;)V

    .line 127
    .end local v1    # "it":Lscenelib/annotations/el/AElement;
    goto :goto_0

    .line 128
    :cond_0
    return-void
.end method

.method private collect(Lscenelib/annotations/el/AnnotationDef;)V
    .locals 3
    .param p1, "d"    # Lscenelib/annotations/el/AnnotationDef;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lscenelib/annotations/el/DefException;
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lscenelib/annotations/el/DefCollector;->defs:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    return-void

    .line 85
    :cond_0
    iget-object v0, p1, Lscenelib/annotations/el/AnnotationDef;->fieldTypes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscenelib/annotations/field/AnnotationFieldType;

    .line 86
    .local v1, "aft":Lscenelib/annotations/field/AnnotationFieldType;
    instance-of v2, v1, Lscenelib/annotations/field/AnnotationAFT;

    if-eqz v2, :cond_1

    .line 87
    move-object v2, v1

    check-cast v2, Lscenelib/annotations/field/AnnotationAFT;

    iget-object v2, v2, Lscenelib/annotations/field/AnnotationAFT;->annotationDef:Lscenelib/annotations/el/AnnotationDef;

    invoke-direct {p0, v2}, Lscenelib/annotations/el/DefCollector;->collect(Lscenelib/annotations/el/AnnotationDef;)V

    .line 89
    .end local v1    # "aft":Lscenelib/annotations/field/AnnotationFieldType;
    :cond_1
    goto :goto_0

    .line 91
    :cond_2
    invoke-direct {p0, p1}, Lscenelib/annotations/el/DefCollector;->addToDefs(Lscenelib/annotations/el/AnnotationDef;)V

    .line 101
    return-void
.end method

.method private getDef(Ljava/lang/String;)Lscenelib/annotations/el/AnnotationDef;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 41
    iget-object v0, p0, Lscenelib/annotations/el/DefCollector;->defs:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscenelib/annotations/el/AnnotationDef;

    .line 42
    .local v1, "def":Lscenelib/annotations/el/AnnotationDef;
    iget-object v2, v1, Lscenelib/annotations/el/AnnotationDef;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 43
    return-object v1

    .line 45
    .end local v1    # "def":Lscenelib/annotations/el/AnnotationDef;
    :cond_0
    goto :goto_0

    .line 46
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final visit()V
    .locals 2

    .line 202
    iget-object v0, p0, Lscenelib/annotations/el/DefCollector;->defs:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscenelib/annotations/el/AnnotationDef;

    .line 203
    .local v1, "d":Lscenelib/annotations/el/AnnotationDef;
    invoke-virtual {p0, v1}, Lscenelib/annotations/el/DefCollector;->visitAnnotationDef(Lscenelib/annotations/el/AnnotationDef;)V

    .line 204
    .end local v1    # "d":Lscenelib/annotations/el/AnnotationDef;
    goto :goto_0

    .line 205
    :cond_0
    return-void
.end method

.method protected abstract visitAnnotationDef(Lscenelib/annotations/el/AnnotationDef;)V
.end method
