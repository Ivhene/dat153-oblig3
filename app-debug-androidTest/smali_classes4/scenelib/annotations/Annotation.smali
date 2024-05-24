.class public final Lscenelib/annotations/Annotation;
.super Ljava/lang/Object;
.source "Annotation.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public final def:Lscenelib/annotations/el/AnnotationDef;

.field public final fieldValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/annotation/Annotation;Ljava/util/Map;)V
    .locals 16
    .param p1, "ja"    # Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/annotation/Annotation;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lscenelib/annotations/el/AnnotationDef;",
            ">;)V"
        }
    .end annotation

    .line 116
    .local p2, "adefs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lscenelib/annotations/el/AnnotationDef;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 117
    invoke-interface/range {p1 .. p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v4

    .line 118
    .local v4, "jaType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 119
    .local v5, "name":Ljava/lang/String;
    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscenelib/annotations/el/AnnotationDef;

    iput-object v0, v1, Lscenelib/annotations/Annotation;->def:Lscenelib/annotations/el/AnnotationDef;

    goto :goto_0

    .line 122
    :cond_0
    invoke-static {v4, v3}, Lscenelib/annotations/el/AnnotationDef;->fromClass(Ljava/lang/Class;Ljava/util/Map;)Lscenelib/annotations/el/AnnotationDef;

    move-result-object v0

    iput-object v0, v1, Lscenelib/annotations/Annotation;->def:Lscenelib/annotations/el/AnnotationDef;

    .line 123
    invoke-interface {v3, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    :goto_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, v1, Lscenelib/annotations/Annotation;->fieldValues:Ljava/util/Map;

    .line 127
    :try_start_0
    iget-object v0, v1, Lscenelib/annotations/Annotation;->def:Lscenelib/annotations/el/AnnotationDef;

    iget-object v0, v0, Lscenelib/annotations/el/AnnotationDef;->fieldTypes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 128
    .local v6, "fieldname":Ljava/lang/String;
    iget-object v7, v1, Lscenelib/annotations/Annotation;->def:Lscenelib/annotations/el/AnnotationDef;

    iget-object v7, v7, Lscenelib/annotations/el/AnnotationDef;->fieldTypes:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lscenelib/annotations/field/AnnotationFieldType;

    .line 129
    .local v7, "aft":Lscenelib/annotations/field/AnnotationFieldType;
    const/4 v8, 0x0

    new-array v9, v8, [Ljava/lang/Class;

    invoke-virtual {v4, v6, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 130
    .local v9, "m":Ljava/lang/reflect/Method;
    new-array v10, v8, [Ljava/lang/Object;

    invoke-virtual {v9, v2, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 131
    .local v10, "val":Ljava/lang/Object;
    invoke-virtual {v7, v10}, Lscenelib/annotations/field/AnnotationFieldType;->isValidValue(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 132
    instance-of v11, v10, [Ljava/lang/Class;

    if-eqz v11, :cond_2

    .line 133
    move-object v11, v10

    check-cast v11, [Ljava/lang/Class;

    check-cast v11, [Ljava/lang/Class;

    .line 134
    .local v11, "vala":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v12, Ljava/util/ArrayList;

    array-length v13, v11

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 135
    .local v12, "vall":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    array-length v13, v11

    move v14, v8

    :goto_2
    if-ge v14, v13, :cond_1

    aget-object v15, v11, v14

    .line 136
    .local v15, "elt":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {v12, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    nop

    .end local v15    # "elt":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 138
    :cond_1
    move-object v10, v12

    .line 139
    .end local v11    # "vala":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v12    # "vall":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    goto :goto_4

    :cond_2
    instance-of v11, v10, [Ljava/lang/Object;

    if-eqz v11, :cond_4

    .line 140
    move-object v11, v10

    check-cast v11, [Ljava/lang/Object;

    check-cast v11, [Ljava/lang/Object;

    .line 141
    .local v11, "vala":[Ljava/lang/Object;
    new-instance v12, Ljava/util/ArrayList;

    array-length v13, v11

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 142
    .local v12, "vall":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    array-length v13, v11

    move v14, v8

    :goto_3
    if-ge v14, v13, :cond_3

    aget-object v15, v11, v14

    .line 143
    .local v15, "elt":Ljava/lang/Object;
    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    nop

    .end local v15    # "elt":Ljava/lang/Object;
    add-int/lit8 v14, v14, 0x1

    const/4 v8, 0x0

    goto :goto_3

    .line 145
    :cond_3
    move-object v10, v12

    .line 146
    .end local v11    # "vala":[Ljava/lang/Object;
    .end local v12    # "vall":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    goto :goto_4

    .line 147
    :cond_4
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v10, v8

    .line 150
    :cond_5
    :goto_4
    invoke-virtual {v7, v10}, Lscenelib/annotations/field/AnnotationFieldType;->isValidValue(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 152
    iget-object v8, v1, Lscenelib/annotations/Annotation;->fieldValues:Ljava/util/Map;

    invoke-interface {v8, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    nop

    .end local v6    # "fieldname":Ljava/lang/String;
    .end local v7    # "aft":Lscenelib/annotations/field/AnnotationFieldType;
    .end local v9    # "m":Ljava/lang/reflect/Method;
    .end local v10    # "val":Ljava/lang/Object;
    goto :goto_1

    .line 150
    .restart local v6    # "fieldname":Ljava/lang/String;
    .restart local v7    # "aft":Lscenelib/annotations/field/AnnotationFieldType;
    .restart local v9    # "m":Ljava/lang/reflect/Method;
    .restart local v10    # "val":Ljava/lang/Object;
    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    const-string v8, "invalid value \"%s\" for field \"%s\" of class \"%s\" and expected type \"%s\"; ja=%s"

    const/4 v11, 0x5

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v10, v11, v12

    .line 151
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    const/4 v13, 0x1

    aput-object v12, v11, v13

    const/4 v12, 0x2

    aput-object v6, v11, v12

    const/4 v12, 0x3

    aput-object v7, v11, v12

    const/4 v12, 0x4

    aput-object v2, v11, v12

    invoke-static {v8, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local v4    # "jaType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    .end local v5    # "name":Ljava/lang/String;
    .end local p1    # "ja":Ljava/lang/annotation/Annotation;
    .end local p2    # "adefs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lscenelib/annotations/el/AnnotationDef;>;"
    throw v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    .end local v6    # "fieldname":Ljava/lang/String;
    .end local v7    # "aft":Lscenelib/annotations/field/AnnotationFieldType;
    .end local v9    # "m":Ljava/lang/reflect/Method;
    .end local v10    # "val":Ljava/lang/Object;
    .restart local v4    # "jaType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    .restart local v5    # "name":Ljava/lang/String;
    .restart local p1    # "ja":Ljava/lang/annotation/Annotation;
    .restart local p2    # "adefs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lscenelib/annotations/el/AnnotationDef;>;"
    :cond_7
    nop

    .line 161
    invoke-virtual/range {p0 .. p0}, Lscenelib/annotations/Annotation;->checkRep()V

    .line 162
    return-void

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v6, Ljava/lang/Error;

    invoke-direct {v6, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 156
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v6, Ljava/lang/Error;

    invoke-direct {v6, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 154
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v0

    .line 155
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v6, Ljava/lang/Error;

    const-string v7, "no such method (annotation field) in %s%n  from: %s %s"

    filled-new-array {v4, v2, v3}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method public constructor <init>(Lscenelib/annotations/el/AnnotationDef;Ljava/util/Map;)V
    .locals 1
    .param p1, "def"    # Lscenelib/annotations/el/AnnotationDef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscenelib/annotations/el/AnnotationDef;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 103
    .local p2, "fields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lscenelib/annotations/Annotation;->def:Lscenelib/annotations/el/AnnotationDef;

    .line 105
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lscenelib/annotations/Annotation;->fieldValues:Ljava/util/Map;

    .line 107
    invoke-virtual {p0}, Lscenelib/annotations/Annotation;->checkRep()V

    .line 108
    return-void
.end method


# virtual methods
.method public checkRep()V
    .locals 13

    .line 42
    iget-object v0, p0, Lscenelib/annotations/Annotation;->fieldValues:Ljava/util/Map;

    if-eqz v0, :cond_c

    .line 43
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 44
    iget-object v0, p0, Lscenelib/annotations/Annotation;->def:Lscenelib/annotations/el/AnnotationDef;

    if-eqz v0, :cond_a

    .line 45
    iget-object v0, v0, Lscenelib/annotations/el/AnnotationDef;->fieldTypes:Ljava/util/Map;

    if-eqz v0, :cond_9

    .line 46
    iget-object v0, p0, Lscenelib/annotations/Annotation;->def:Lscenelib/annotations/el/AnnotationDef;

    iget-object v0, v0, Lscenelib/annotations/el/AnnotationDef;->fieldTypes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 47
    iget-object v0, p0, Lscenelib/annotations/Annotation;->fieldValues:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lscenelib/annotations/Annotation;->def:Lscenelib/annotations/el/AnnotationDef;

    iget-object v1, v1, Lscenelib/annotations/el/AnnotationDef;->fieldTypes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 48
    iget-object v0, p0, Lscenelib/annotations/Annotation;->fieldValues:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 49
    .local v1, "s":Ljava/lang/String;
    iget-object v2, p0, Lscenelib/annotations/Annotation;->def:Lscenelib/annotations/el/AnnotationDef;

    iget-object v2, v2, Lscenelib/annotations/el/AnnotationDef;->fieldTypes:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 51
    .end local v1    # "s":Ljava/lang/String;
    goto :goto_0

    .line 49
    .restart local v1    # "s":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    iget-object v2, p0, Lscenelib/annotations/Annotation;->def:Lscenelib/annotations/el/AnnotationDef;

    filled-new-array {v1, p0, v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 50
    const-string v3, "Annotation contains field %s but AnnotationDef does not%n  annotation: %s%n  def: %s%n"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 60
    .end local v1    # "s":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lscenelib/annotations/Annotation;->fieldValues:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 61
    .local v1, "fieldname":Ljava/lang/String;
    iget-object v2, p0, Lscenelib/annotations/Annotation;->def:Lscenelib/annotations/el/AnnotationDef;

    iget-object v2, v2, Lscenelib/annotations/el/AnnotationDef;->fieldTypes:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscenelib/annotations/field/AnnotationFieldType;

    .line 62
    .local v2, "aft":Lscenelib/annotations/field/AnnotationFieldType;
    iget-object v3, p0, Lscenelib/annotations/Annotation;->fieldValues:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 64
    .local v3, "value":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v4

    .line 65
    .local v4, "classString":Ljava/lang/String;
    instance-of v5, v3, [Ljava/lang/Object;

    const-string v6, " "

    const-string v7, " {"

    if-eqz v5, :cond_3

    .line 66
    move-object v5, v3

    check-cast v5, [Ljava/lang/Object;

    check-cast v5, [Ljava/lang/Object;

    .line 67
    .local v5, "arr":[Ljava/lang/Object;
    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 68
    .local v8, "valueString":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 69
    array-length v7, v5

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v7, :cond_2

    aget-object v10, v5, v9

    .line 70
    .local v10, "elt":Ljava/lang/Object;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 69
    .end local v10    # "elt":Ljava/lang/Object;
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 72
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 73
    .end local v5    # "arr":[Ljava/lang/Object;
    goto :goto_4

    .end local v8    # "valueString":Ljava/lang/String;
    :cond_3
    instance-of v5, v3, Ljava/util/Collection;

    if-eqz v5, :cond_5

    .line 74
    move-object v5, v3

    check-cast v5, Ljava/util/Collection;

    .line 75
    .local v5, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {v5}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 76
    .restart local v8    # "valueString":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 77
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 78
    .local v9, "elt":Ljava/lang/Object;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 79
    .end local v9    # "elt":Ljava/lang/Object;
    goto :goto_3

    .line 80
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " }"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 81
    .end local v5    # "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    goto :goto_4

    .line 82
    .end local v8    # "valueString":Ljava/lang/String;
    :cond_5
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 85
    .restart local v8    # "valueString":Ljava/lang/String;
    :goto_4
    invoke-virtual {v2, v3}, Lscenelib/annotations/field/AnnotationFieldType;->isValidValue(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 88
    .end local v1    # "fieldname":Ljava/lang/String;
    .end local v2    # "aft":Lscenelib/annotations/field/AnnotationFieldType;
    .end local v3    # "value":Ljava/lang/Object;
    .end local v4    # "classString":Ljava/lang/String;
    .end local v8    # "valueString":Ljava/lang/String;
    goto/16 :goto_1

    .line 85
    .restart local v1    # "fieldname":Ljava/lang/String;
    .restart local v2    # "aft":Lscenelib/annotations/field/AnnotationFieldType;
    .restart local v3    # "value":Ljava/lang/Object;
    .restart local v4    # "classString":Ljava/lang/String;
    .restart local v8    # "valueString":Ljava/lang/String;
    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    .line 87
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    iget-object v6, p0, Lscenelib/annotations/Annotation;->def:Lscenelib/annotations/el/AnnotationDef;

    filled-new-array {v8, v4, v2, v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    .line 86
    const-string v6, "Bad field value%n  %s (%s)%nfor field%n  %s (%s)%nin annotation%n  %s"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 89
    .end local v1    # "fieldname":Ljava/lang/String;
    .end local v2    # "aft":Lscenelib/annotations/field/AnnotationFieldType;
    .end local v3    # "value":Ljava/lang/Object;
    .end local v4    # "classString":Ljava/lang/String;
    .end local v8    # "valueString":Ljava/lang/String;
    :cond_7
    return-void

    .line 46
    :cond_8
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 45
    :cond_9
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 44
    :cond_a
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 43
    :cond_b
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 42
    :cond_c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final def()Lscenelib/annotations/el/AnnotationDef;
    .locals 1

    .line 199
    iget-object v0, p0, Lscenelib/annotations/Annotation;->def:Lscenelib/annotations/el/AnnotationDef;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 210
    instance-of v0, p1, Lscenelib/annotations/Annotation;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lscenelib/annotations/Annotation;

    invoke-virtual {p0, v0}, Lscenelib/annotations/Annotation;->equals(Lscenelib/annotations/Annotation;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public equals(Lscenelib/annotations/Annotation;)Z
    .locals 2
    .param p1, "o"    # Lscenelib/annotations/Annotation;

    .line 224
    iget-object v0, p0, Lscenelib/annotations/Annotation;->def:Lscenelib/annotations/el/AnnotationDef;

    invoke-virtual {p1}, Lscenelib/annotations/Annotation;->def()Lscenelib/annotations/el/AnnotationDef;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscenelib/annotations/el/AnnotationDef;->equals(Lscenelib/annotations/el/AnnotationDef;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lscenelib/annotations/Annotation;->fieldValues:Ljava/util/Map;

    iget-object v1, p1, Lscenelib/annotations/Annotation;->fieldValues:Ljava/util/Map;

    .line 225
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 224
    :goto_0
    return v0
.end method

.method public getFieldValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;

    .line 188
    iget-object v0, p0, Lscenelib/annotations/Annotation;->fieldValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 235
    iget-object v0, p0, Lscenelib/annotations/Annotation;->def:Lscenelib/annotations/el/AnnotationDef;

    invoke-virtual {v0}, Lscenelib/annotations/el/AnnotationDef;->hashCode()I

    move-result v0

    iget-object v1, p0, Lscenelib/annotations/Annotation;->fieldValues:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 248
    .local v0, "result":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lscenelib/annotations/Annotation;->def:Lscenelib/annotations/el/AnnotationDef;

    iget-object v2, v2, Lscenelib/annotations/el/AnnotationDef;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    iget-object v1, p0, Lscenelib/annotations/Annotation;->fieldValues:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0x29

    const/16 v4, 0x28

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lscenelib/annotations/Annotation;->fieldValues:Ljava/util/Map;

    const-string v2, "value"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 250
    iget-object v1, p0, Lscenelib/annotations/Annotation;->def:Lscenelib/annotations/el/AnnotationDef;

    iget-object v1, v1, Lscenelib/annotations/el/AnnotationDef;->fieldTypes:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscenelib/annotations/field/AnnotationFieldType;

    .line 251
    .local v1, "fieldType":Lscenelib/annotations/field/AnnotationFieldType;
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 252
    iget-object v4, p0, Lscenelib/annotations/Annotation;->fieldValues:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lscenelib/annotations/field/AnnotationFieldType;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .end local v1    # "fieldType":Lscenelib/annotations/field/AnnotationFieldType;
    goto :goto_2

    .line 254
    :cond_0
    iget-object v1, p0, Lscenelib/annotations/Annotation;->fieldValues:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 255
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 256
    const/4 v1, 0x0

    .line 257
    .local v1, "notfirst":Z
    iget-object v2, p0, Lscenelib/annotations/Annotation;->fieldValues:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 259
    .local v4, "field":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v1, :cond_1

    .line 260
    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 262
    :cond_1
    const/4 v1, 0x1

    .line 264
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    iget-object v5, p0, Lscenelib/annotations/Annotation;->def:Lscenelib/annotations/el/AnnotationDef;

    iget-object v5, v5, Lscenelib/annotations/el/AnnotationDef;->fieldTypes:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lscenelib/annotations/field/AnnotationFieldType;

    .line 266
    .local v5, "fieldType":Lscenelib/annotations/field/AnnotationFieldType;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lscenelib/annotations/field/AnnotationFieldType;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .end local v4    # "field":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5    # "fieldType":Lscenelib/annotations/field/AnnotationFieldType;
    goto :goto_0

    .line 268
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 254
    .end local v1    # "notfirst":Z
    :cond_3
    :goto_2
    nop

    .line 270
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
