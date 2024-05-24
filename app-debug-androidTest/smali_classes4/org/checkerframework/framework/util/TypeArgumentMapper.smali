.class public Lorg/checkerframework/framework/util/TypeArgumentMapper;
.super Ljava/lang/Object;
.source "TypeArgumentMapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/framework/util/TypeArgumentMapper$TypeRecord;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addToSetMap(Ljava/util/Map;Ljavax/lang/model/element/TypeParameterElement;Ljavax/lang/model/element/TypeParameterElement;)V
    .locals 2
    .param p1, "element"    # Ljavax/lang/model/element/TypeParameterElement;
    .param p2, "typeParam"    # Ljavax/lang/model/element/TypeParameterElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljavax/lang/model/element/TypeParameterElement;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/TypeParameterElement;",
            ">;>;",
            "Ljavax/lang/model/element/TypeParameterElement;",
            "Ljavax/lang/model/element/TypeParameterElement;",
            ")V"
        }
    .end annotation

    .line 210
    .local p0, "setMap":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/TypeParameterElement;Ljava/util/Set<Ljavax/lang/model/element/TypeParameterElement;>;>;"
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 211
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/TypeParameterElement;>;"
    if-nez v0, :cond_0

    .line 212
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    move-object v0, v1

    .line 213
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 217
    return-void
.end method

.method private static depthFirstSearchForSupertype(Ljavax/lang/model/element/TypeElement;Ljavax/lang/model/element/TypeElement;Ljavax/lang/model/util/Types;)Ljava/util/List;
    .locals 3
    .param p0, "subtype"    # Ljavax/lang/model/element/TypeElement;
    .param p1, "target"    # Ljavax/lang/model/element/TypeElement;
    .param p2, "types"    # Ljavax/lang/model/util/Types;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/TypeElement;",
            "Ljavax/lang/model/element/TypeElement;",
            "Ljavax/lang/model/util/Types;",
            ")",
            "Ljava/util/List<",
            "Lorg/checkerframework/framework/util/TypeArgumentMapper$TypeRecord;",
            ">;"
        }
    .end annotation

    .line 257
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 258
    .local v0, "pathFromRoot":Ljava/util/Stack;, "Ljava/util/Stack<Lorg/checkerframework/framework/util/TypeArgumentMapper$TypeRecord;>;"
    new-instance v1, Lorg/checkerframework/framework/util/TypeArgumentMapper$TypeRecord;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/checkerframework/framework/util/TypeArgumentMapper$TypeRecord;-><init>(Ljavax/lang/model/element/TypeElement;Ljavax/lang/model/type/DeclaredType;)V

    .line 259
    .local v1, "pathStart":Lorg/checkerframework/framework/util/TypeArgumentMapper$TypeRecord;
    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    invoke-static {v0, p1, p2}, Lorg/checkerframework/framework/util/TypeArgumentMapper;->recursiveDepthFirstSearch(Ljava/util/Stack;Ljavax/lang/model/element/TypeElement;Ljavax/lang/model/util/Types;)Ljava/util/List;

    move-result-object v2

    .line 261
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/util/TypeArgumentMapper$TypeRecord;>;"
    return-object v2
.end method

.method private static flattenPath(Ljava/util/Set;Ljava/util/Map;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/TypeParameterElement;",
            ">;",
            "Ljava/util/Map<",
            "Ljavax/lang/model/element/TypeParameterElement;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/TypeParameterElement;",
            ">;>;)",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/TypeParameterElement;",
            ">;"
        }
    .end annotation

    .line 191
    .local p0, "elements":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/TypeParameterElement;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/TypeParameterElement;Ljava/util/Set<Ljavax/lang/model/element/TypeParameterElement;>;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 192
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/TypeParameterElement;>;"
    if-nez p0, :cond_0

    .line 193
    return-object v0

    .line 195
    :cond_0
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/TypeParameterElement;

    .line 196
    .local v2, "oldElement":Ljavax/lang/model/element/TypeParameterElement;
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 197
    .local v3, "substitutions":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/TypeParameterElement;>;"
    if-eqz v3, :cond_1

    .line 198
    invoke-static {p0, p1}, Lorg/checkerframework/framework/util/TypeArgumentMapper;->flattenPath(Ljava/util/Set;Ljava/util/Map;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 200
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 202
    .end local v2    # "oldElement":Ljavax/lang/model/element/TypeParameterElement;
    .end local v3    # "substitutions":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/TypeParameterElement;>;"
    :goto_1
    goto :goto_0

    .line 203
    :cond_2
    return-object v0
.end method

.method private static getElementToIndex(Ljavax/lang/model/element/TypeElement;)Ljava/util/Map;
    .locals 5
    .param p0, "typeElement"    # Ljavax/lang/model/element/TypeElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/TypeElement;",
            ")",
            "Ljava/util/Map<",
            "Ljavax/lang/model/element/TypeParameterElement;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 100
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 102
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/TypeParameterElement;Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljavax/lang/model/element/TypeElement;->getTypeParameters()Ljava/util/List;

    move-result-object v1

    .line 103
    .local v1, "params":Ljava/util/List;, "Ljava/util/List<+Ljavax/lang/model/element/TypeParameterElement;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 104
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/element/TypeParameterElement;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 107
    .end local v2    # "i":I
    :cond_0
    return-object v0
.end method

.method public static mapTypeArgumentIndices(Ljavax/lang/model/element/TypeElement;Ljavax/lang/model/element/TypeElement;Ljavax/lang/model/util/Types;)Ljava/util/Set;
    .locals 11
    .param p0, "subtype"    # Ljavax/lang/model/element/TypeElement;
    .param p1, "supertype"    # Ljavax/lang/model/element/TypeElement;
    .param p2, "types"    # Ljavax/lang/model/util/Types;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/TypeElement;",
            "Ljavax/lang/model/element/TypeElement;",
            "Ljavax/lang/model/util/Types;",
            ")",
            "Ljava/util/Set<",
            "Lorg/checkerframework/javacutil/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 69
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 70
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/javacutil/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljavax/lang/model/element/TypeElement;->getTypeParameters()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 72
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/checkerframework/javacutil/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/javacutil/Pair;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    :cond_0
    goto :goto_3

    .line 76
    :cond_1
    nop

    .line 77
    invoke-static {p0, p1, p2}, Lorg/checkerframework/framework/util/TypeArgumentMapper;->mapTypeArguments(Ljavax/lang/model/element/TypeElement;Ljavax/lang/model/element/TypeElement;Ljavax/lang/model/util/Types;)Ljava/util/Map;

    move-result-object v1

    .line 78
    .local v1, "subToSuperElements":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/TypeParameterElement;Ljava/util/Set<Ljavax/lang/model/element/TypeParameterElement;>;>;"
    invoke-static {p1}, Lorg/checkerframework/framework/util/TypeArgumentMapper;->getElementToIndex(Ljavax/lang/model/element/TypeElement;)Ljava/util/Map;

    move-result-object v2

    .line 80
    .local v2, "supertypeIndexes":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/TypeParameterElement;Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljavax/lang/model/element/TypeElement;->getTypeParameters()Ljava/util/List;

    move-result-object v3

    .line 81
    .local v3, "subtypeParams":Ljava/util/List;, "Ljava/util/List<+Ljavax/lang/model/element/TypeParameterElement;>;"
    const/4 v4, 0x0

    .local v4, "subtypeIndex":I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 82
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/lang/model/element/TypeParameterElement;

    .line 84
    .local v5, "subtypeParam":Ljavax/lang/model/element/TypeParameterElement;
    nop

    .line 85
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    .line 86
    .local v6, "correspondingSuperArgs":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/TypeParameterElement;>;"
    if-eqz v6, :cond_2

    .line 88
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavax/lang/model/element/TypeParameterElement;

    .line 89
    .local v8, "supertypeParam":Ljavax/lang/model/element/TypeParameterElement;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-static {v9, v10}, Lorg/checkerframework/javacutil/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/javacutil/Pair;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 90
    .end local v8    # "supertypeParam":Ljavax/lang/model/element/TypeParameterElement;
    goto :goto_2

    .line 81
    .end local v5    # "subtypeParam":Ljavax/lang/model/element/TypeParameterElement;
    .end local v6    # "correspondingSuperArgs":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/TypeParameterElement;>;"
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 95
    .end local v1    # "subToSuperElements":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/TypeParameterElement;Ljava/util/Set<Ljavax/lang/model/element/TypeParameterElement;>;>;"
    .end local v2    # "supertypeIndexes":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/TypeParameterElement;Ljava/lang/Integer;>;"
    .end local v3    # "subtypeParams":Ljava/util/List;, "Ljava/util/List<+Ljavax/lang/model/element/TypeParameterElement;>;"
    .end local v4    # "subtypeIndex":I
    :cond_3
    :goto_3
    return-object v0
.end method

.method public static mapTypeArguments(Ljavax/lang/model/element/TypeElement;Ljavax/lang/model/element/TypeElement;Ljavax/lang/model/util/Types;)Ljava/util/Map;
    .locals 13
    .param p0, "subtype"    # Ljavax/lang/model/element/TypeElement;
    .param p1, "supertype"    # Ljavax/lang/model/element/TypeElement;
    .param p2, "types"    # Ljavax/lang/model/util/Types;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/TypeElement;",
            "Ljavax/lang/model/element/TypeElement;",
            "Ljavax/lang/model/util/Types;",
            ")",
            "Ljava/util/Map<",
            "Ljavax/lang/model/element/TypeParameterElement;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/TypeParameterElement;",
            ">;>;"
        }
    .end annotation

    .line 129
    nop

    .line 130
    invoke-static {p0, p1, p2}, Lorg/checkerframework/framework/util/TypeArgumentMapper;->depthFirstSearchForSupertype(Ljavax/lang/model/element/TypeElement;Ljavax/lang/model/element/TypeElement;Ljavax/lang/model/util/Types;)Ljava/util/List;

    move-result-object v0

    .line 132
    .local v0, "pathToSupertype":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/util/TypeArgumentMapper$TypeRecord;>;"
    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    .line 136
    :cond_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 138
    .local v1, "intermediate":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/TypeParameterElement;Ljava/util/Set<Ljavax/lang/model/element/TypeParameterElement;>;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 146
    .local v2, "currentTypeParams":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/TypeParameterElement;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 147
    .local v3, "path":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/checkerframework/framework/util/TypeArgumentMapper$TypeRecord;>;"
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/framework/util/TypeArgumentMapper$TypeRecord;

    .line 148
    .local v4, "current":Lorg/checkerframework/framework/util/TypeArgumentMapper$TypeRecord;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 149
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/framework/util/TypeArgumentMapper$TypeRecord;

    .line 151
    .local v5, "next":Lorg/checkerframework/framework/util/TypeArgumentMapper$TypeRecord;
    iget-object v6, v5, Lorg/checkerframework/framework/util/TypeArgumentMapper$TypeRecord;->element:Ljavax/lang/model/element/TypeElement;

    .line 152
    invoke-interface {v6}, Ljavax/lang/model/element/TypeElement;->getTypeParameters()Ljava/util/List;

    move-result-object v6

    .line 154
    .local v6, "nextTypeParameter":Ljava/util/List;, "Ljava/util/List<+Ljavax/lang/model/element/TypeParameterElement;>;"
    iget-object v7, v5, Lorg/checkerframework/framework/util/TypeArgumentMapper$TypeRecord;->type:Ljavax/lang/model/type/DeclaredType;

    if-eqz v7, :cond_1

    iget-object v7, v5, Lorg/checkerframework/framework/util/TypeArgumentMapper$TypeRecord;->type:Ljavax/lang/model/type/DeclaredType;

    invoke-interface {v7}, Ljavax/lang/model/type/DeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v7

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    .line 155
    .local v7, "nextTypeArgs":Ljava/util/List;, "Ljava/util/List<+Ljavax/lang/model/type/TypeMirror;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 156
    iget-object v8, v4, Lorg/checkerframework/framework/util/TypeArgumentMapper$TypeRecord;->element:Ljavax/lang/model/element/TypeElement;

    invoke-interface {v8}, Ljavax/lang/model/element/TypeElement;->getTypeParameters()Ljava/util/List;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 158
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 159
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljavax/lang/model/element/TypeParameterElement;

    .line 160
    .local v9, "correspondingParameter":Ljavax/lang/model/element/TypeParameterElement;
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljavax/lang/model/type/TypeMirror;

    .line 161
    .local v10, "typeArg":Ljavax/lang/model/type/TypeMirror;
    invoke-interface {p2, v10}, Ljavax/lang/model/util/Types;->asElement(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/element/Element;

    move-result-object v11

    .line 163
    .local v11, "typeArgEle":Ljavax/lang/model/element/Element;
    invoke-interface {v2, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 164
    move-object v12, v11

    check-cast v12, Ljavax/lang/model/element/TypeParameterElement;

    invoke-static {v1, v12, v9}, Lorg/checkerframework/framework/util/TypeArgumentMapper;->addToSetMap(Ljava/util/Map;Ljavax/lang/model/element/TypeParameterElement;Ljavax/lang/model/element/TypeParameterElement;)V

    .line 158
    .end local v9    # "correspondingParameter":Ljavax/lang/model/element/TypeParameterElement;
    .end local v10    # "typeArg":Ljavax/lang/model/type/TypeMirror;
    .end local v11    # "typeArgEle":Ljavax/lang/model/element/Element;
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 170
    .end local v5    # "next":Lorg/checkerframework/framework/util/TypeArgumentMapper$TypeRecord;
    .end local v6    # "nextTypeParameter":Ljava/util/List;, "Ljava/util/List<+Ljavax/lang/model/element/TypeParameterElement;>;"
    .end local v7    # "nextTypeArgs":Ljava/util/List;, "Ljava/util/List<+Ljavax/lang/model/type/TypeMirror;>;"
    .end local v8    # "i":I
    :cond_3
    goto :goto_0

    .line 172
    :cond_4
    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getTypeParameters()Ljava/util/List;

    move-result-object v5

    .line 173
    .local v5, "supertypeParams":Ljava/util/List;, "Ljava/util/List<+Ljavax/lang/model/element/TypeParameterElement;>;"
    new-instance v6, Ljava/util/LinkedHashMap;

    .line 174
    invoke-interface {p0}, Ljavax/lang/model/element/TypeElement;->getTypeParameters()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 178
    .local v6, "result":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/TypeParameterElement;Ljava/util/Set<Ljavax/lang/model/element/TypeParameterElement;>;>;"
    invoke-interface {p0}, Ljavax/lang/model/element/TypeElement;->getTypeParameters()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavax/lang/model/element/TypeParameterElement;

    .line 179
    .local v8, "subtypeParam":Ljavax/lang/model/element/TypeParameterElement;
    nop

    .line 180
    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Set;

    invoke-static {v9, v1}, Lorg/checkerframework/framework/util/TypeArgumentMapper;->flattenPath(Ljava/util/Set;Ljava/util/Map;)Ljava/util/Set;

    move-result-object v9

    .line 181
    .local v9, "subtypePath":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/TypeParameterElement;>;"
    invoke-interface {v9, v5}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 182
    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    .end local v8    # "subtypeParam":Ljavax/lang/model/element/TypeParameterElement;
    .end local v9    # "subtypePath":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/TypeParameterElement;>;"
    goto :goto_3

    .line 185
    :cond_5
    return-object v6

    .line 133
    .end local v1    # "intermediate":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/TypeParameterElement;Ljava/util/Set<Ljavax/lang/model/element/TypeParameterElement;>;>;"
    .end local v2    # "currentTypeParams":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/TypeParameterElement;>;"
    .end local v3    # "path":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/checkerframework/framework/util/TypeArgumentMapper$TypeRecord;>;"
    .end local v4    # "current":Lorg/checkerframework/framework/util/TypeArgumentMapper$TypeRecord;
    .end local v5    # "supertypeParams":Ljava/util/List;, "Ljava/util/List<+Ljavax/lang/model/element/TypeParameterElement;>;"
    .end local v6    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/TypeParameterElement;Ljava/util/Set<Ljavax/lang/model/element/TypeParameterElement;>;>;"
    :cond_6
    :goto_4
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    return-object v1
.end method

.method private static recursiveDepthFirstSearch(Ljava/util/Stack;Ljavax/lang/model/element/TypeElement;Ljavax/lang/model/util/Types;)Ljava/util/List;
    .locals 9
    .param p1, "target"    # Ljavax/lang/model/element/TypeElement;
    .param p2, "types"    # Ljavax/lang/model/util/Types;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack<",
            "Lorg/checkerframework/framework/util/TypeArgumentMapper$TypeRecord;",
            ">;",
            "Ljavax/lang/model/element/TypeElement;",
            "Ljavax/lang/model/util/Types;",
            ")",
            "Ljava/util/List<",
            "Lorg/checkerframework/framework/util/TypeArgumentMapper$TypeRecord;",
            ">;"
        }
    .end annotation

    .line 267
    .local p0, "pathFromRoot":Ljava/util/Stack;, "Ljava/util/Stack<Lorg/checkerframework/framework/util/TypeArgumentMapper$TypeRecord;>;"
    invoke-virtual {p0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    const/4 v0, 0x0

    return-object v0

    .line 271
    :cond_0
    invoke-virtual {p0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/util/TypeArgumentMapper$TypeRecord;

    .line 272
    .local v0, "currentRecord":Lorg/checkerframework/framework/util/TypeArgumentMapper$TypeRecord;
    iget-object v1, v0, Lorg/checkerframework/framework/util/TypeArgumentMapper$TypeRecord;->element:Ljavax/lang/model/element/TypeElement;

    .line 274
    .local v1, "currentElement":Ljavax/lang/model/element/TypeElement;
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 275
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v2

    .line 278
    :cond_1
    invoke-interface {v1}, Ljavax/lang/model/element/TypeElement;->getInterfaces()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 279
    .local v2, "interfaces":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljavax/lang/model/type/TypeMirror;>;"
    invoke-interface {v1}, Ljavax/lang/model/element/TypeElement;->getSuperclass()Ljavax/lang/model/type/TypeMirror;

    move-result-object v3

    .line 281
    .local v3, "superclassType":Ljavax/lang/model/type/TypeMirror;
    const/4 v4, 0x0

    .line 283
    .local v4, "path":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/util/TypeArgumentMapper$TypeRecord;>;"
    :goto_0
    if-nez v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 284
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/lang/model/type/TypeMirror;

    .line 285
    .local v5, "intface":Ljavax/lang/model/type/TypeMirror;
    invoke-interface {v5}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v6

    sget-object v7, Ljavax/lang/model/type/TypeKind;->NONE:Ljavax/lang/model/type/TypeKind;

    if-eq v6, v7, :cond_2

    .line 286
    move-object v6, v5

    check-cast v6, Ljavax/lang/model/type/DeclaredType;

    .line 287
    .local v6, "interfaceDeclared":Ljavax/lang/model/type/DeclaredType;
    new-instance v7, Lorg/checkerframework/framework/util/TypeArgumentMapper$TypeRecord;

    .line 289
    invoke-interface {p2, v6}, Ljavax/lang/model/util/Types;->asElement(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/element/Element;

    move-result-object v8

    check-cast v8, Ljavax/lang/model/element/TypeElement;

    invoke-direct {v7, v8, v6}, Lorg/checkerframework/framework/util/TypeArgumentMapper$TypeRecord;-><init>(Ljavax/lang/model/element/TypeElement;Ljavax/lang/model/type/DeclaredType;)V

    .line 287
    invoke-virtual {p0, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    invoke-static {p0, p1, p2}, Lorg/checkerframework/framework/util/TypeArgumentMapper;->recursiveDepthFirstSearch(Ljava/util/Stack;Ljavax/lang/model/element/TypeElement;Ljavax/lang/model/util/Types;)Ljava/util/List;

    move-result-object v4

    .line 292
    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 294
    .end local v5    # "intface":Ljavax/lang/model/type/TypeMirror;
    .end local v6    # "interfaceDeclared":Ljavax/lang/model/type/DeclaredType;
    :cond_2
    goto :goto_0

    .line 296
    :cond_3
    if-nez v4, :cond_4

    invoke-interface {v3}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v5

    sget-object v6, Ljavax/lang/model/type/TypeKind;->NONE:Ljavax/lang/model/type/TypeKind;

    if-eq v5, v6, :cond_4

    .line 297
    move-object v5, v3

    check-cast v5, Ljavax/lang/model/type/DeclaredType;

    .line 299
    .local v5, "superclass":Ljavax/lang/model/type/DeclaredType;
    new-instance v6, Lorg/checkerframework/framework/util/TypeArgumentMapper$TypeRecord;

    .line 300
    invoke-interface {p2, v5}, Ljavax/lang/model/util/Types;->asElement(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/element/Element;

    move-result-object v7

    check-cast v7, Ljavax/lang/model/element/TypeElement;

    invoke-direct {v6, v7, v5}, Lorg/checkerframework/framework/util/TypeArgumentMapper$TypeRecord;-><init>(Ljavax/lang/model/element/TypeElement;Ljavax/lang/model/type/DeclaredType;)V

    .line 299
    invoke-virtual {p0, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    invoke-static {p0, p1, p2}, Lorg/checkerframework/framework/util/TypeArgumentMapper;->recursiveDepthFirstSearch(Ljava/util/Stack;Ljavax/lang/model/element/TypeElement;Ljavax/lang/model/util/Types;)Ljava/util/List;

    move-result-object v4

    .line 302
    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 305
    .end local v5    # "superclass":Ljavax/lang/model/type/DeclaredType;
    :cond_4
    return-object v4
.end method
