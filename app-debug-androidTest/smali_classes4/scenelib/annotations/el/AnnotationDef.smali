.class public final Lscenelib/annotations/el/AnnotationDef;
.super Lscenelib/annotations/el/AElement;
.source "AnnotationDef.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public fieldTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lscenelib/annotations/field/AnnotationFieldType;",
            ">;"
        }
    .end annotation
.end field

.field public final name:Ljava/lang/String;

.field public source:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "annotation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lscenelib/annotations/el/AElement;-><init>(Ljava/lang/Object;)V

    .line 49
    if-eqz p1, :cond_1

    .line 50
    if-eqz p2, :cond_0

    .line 51
    iput-object p1, p0, Lscenelib/annotations/el/AnnotationDef;->name:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lscenelib/annotations/el/AnnotationDef;->source:Ljava/lang/String;

    .line 53
    return-void

    .line 50
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 49
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lscenelib/annotations/Annotation;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 98
    .local p2, "tlAnnotationsHere":Ljava/util/Set;, "Ljava/util/Set<Lscenelib/annotations/Annotation;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "annotation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lscenelib/annotations/el/AElement;-><init>(Ljava/lang/Object;)V

    .line 99
    if-eqz p1, :cond_2

    .line 100
    if-eqz p3, :cond_1

    .line 101
    iput-object p1, p0, Lscenelib/annotations/el/AnnotationDef;->name:Ljava/lang/String;

    .line 102
    iput-object p3, p0, Lscenelib/annotations/el/AnnotationDef;->source:Ljava/lang/String;

    .line 103
    if-eqz p2, :cond_0

    .line 104
    iget-object v0, p0, Lscenelib/annotations/el/AnnotationDef;->tlAnnotationsHere:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 106
    :cond_0
    return-void

    .line 100
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 99
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p4, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lscenelib/annotations/Annotation;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lscenelib/annotations/field/AnnotationFieldType;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 118
    .local p2, "tlAnnotationsHere":Ljava/util/Set;, "Ljava/util/Set<Lscenelib/annotations/Annotation;>;"
    .local p3, "fieldTypes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Lscenelib/annotations/field/AnnotationFieldType;>;"
    invoke-direct {p0, p1, p2, p4}, Lscenelib/annotations/el/AnnotationDef;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0, p3}, Lscenelib/annotations/el/AnnotationDef;->setFieldTypes(Ljava/util/Map;)V

    .line 120
    return-void
.end method

.method public static fromClass(Ljava/lang/Class;Ljava/util/Map;)Lscenelib/annotations/el/AnnotationDef;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lscenelib/annotations/el/AnnotationDef;",
            ">;)",
            "Lscenelib/annotations/el/AnnotationDef;"
        }
    .end annotation

    .line 65
    .local p0, "annoType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    .local p1, "adefs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lscenelib/annotations/el/AnnotationDef;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 68
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscenelib/annotations/el/AnnotationDef;

    return-object v1

    .line 72
    :cond_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 73
    .local v1, "fieldTypes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lscenelib/annotations/field/AnnotationFieldType;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v2, v5

    .line 74
    .local v6, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v7, p1}, Lscenelib/annotations/field/AnnotationFieldType;->fromClass(Ljava/lang/Class;Ljava/util/Map;)Lscenelib/annotations/field/AnnotationFieldType;

    move-result-object v7

    .line 75
    .local v7, "aft":Lscenelib/annotations/field/AnnotationFieldType;
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .end local v6    # "m":Ljava/lang/reflect/Method;
    .end local v7    # "aft":Lscenelib/annotations/field/AnnotationFieldType;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 78
    :cond_1
    new-instance v2, Lscenelib/annotations/el/AnnotationDef;

    sget-object v3, Lscenelib/annotations/Annotations;->noAnnotations:Ljava/util/Set;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v0, v3, v1, v5}, Lscenelib/annotations/el/AnnotationDef;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;Ljava/lang/String;)V

    .line 79
    .local v2, "result":Lscenelib/annotations/el/AnnotationDef;
    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .local v3, "jannos":[Ljava/lang/annotation/Annotation;
    nop

    .line 90
    array-length v5, v3

    :goto_1
    if-ge v4, v5, :cond_2

    aget-object v6, v3, v4

    .line 91
    .local v6, "ja":Ljava/lang/annotation/Annotation;
    iget-object v7, v2, Lscenelib/annotations/el/AnnotationDef;->tlAnnotationsHere:Ljava/util/Set;

    new-instance v8, Lscenelib/annotations/Annotation;

    invoke-direct {v8, v6, p1}, Lscenelib/annotations/Annotation;-><init>(Ljava/lang/annotation/Annotation;Ljava/util/Map;)V

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 90
    .end local v6    # "ja":Ljava/lang/annotation/Annotation;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 94
    :cond_2
    return-object v2

    .line 86
    .end local v3    # "jannos":[Ljava/lang/annotation/Annotation;
    :catch_0
    move-exception v3

    .line 87
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {}, Lscenelib/annotations/el/AnnotationDef;->printClasspath()V

    .line 88
    new-instance v4, Ljava/lang/Error;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in anno.getDeclaredAnnotations() for anno = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 66
    .end local v1    # "fieldTypes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lscenelib/annotations/field/AnnotationFieldType;>;"
    .end local v2    # "result":Lscenelib/annotations/el/AnnotationDef;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_3
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public static printClasspath()V
    .locals 6

    .line 346
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Classpath:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 347
    new-instance v0, Ljava/util/StringTokenizer;

    .line 348
    const-string v1, "java.class.path"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    .local v0, "tokenizer":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 350
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 351
    .local v1, "cpelt":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    .line 352
    .local v2, "exists":Z
    if-nez v2, :cond_0

    .line 353
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, " non-existent:"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 355
    :cond_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 356
    .end local v1    # "cpelt":Ljava/lang/String;
    .end local v2    # "exists":Z
    goto :goto_0

    .line 357
    :cond_1
    return-void
.end method

.method public static unify(Lscenelib/annotations/el/AnnotationDef;Lscenelib/annotations/el/AnnotationDef;)Lscenelib/annotations/el/AnnotationDef;
    .locals 9
    .param p0, "def1"    # Lscenelib/annotations/el/AnnotationDef;
    .param p1, "def2"    # Lscenelib/annotations/el/AnnotationDef;

    .line 282
    invoke-virtual {p0, p1}, Lscenelib/annotations/el/AnnotationDef;->equals(Lscenelib/annotations/el/AnnotationDef;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    return-object p0

    .line 284
    :cond_0
    iget-object v0, p0, Lscenelib/annotations/el/AnnotationDef;->name:Ljava/lang/String;

    iget-object v1, p1, Lscenelib/annotations/el/AnnotationDef;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 285
    invoke-virtual {p0, p1}, Lscenelib/annotations/el/AnnotationDef;->equalsElement(Lscenelib/annotations/el/AElement;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 286
    iget-object v0, p0, Lscenelib/annotations/el/AnnotationDef;->fieldTypes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 287
    .local v0, "ks1":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, p1, Lscenelib/annotations/el/AnnotationDef;->fieldTypes:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 288
    .local v2, "ks2":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 289
    :cond_1
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 291
    .local v3, "newFieldTypes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lscenelib/annotations/field/AnnotationFieldType;>;"
    iget-object v4, p0, Lscenelib/annotations/el/AnnotationDef;->fieldTypes:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 292
    .local v5, "fieldName":Ljava/lang/String;
    iget-object v6, p0, Lscenelib/annotations/el/AnnotationDef;->fieldTypes:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lscenelib/annotations/field/AnnotationFieldType;

    .line 293
    .local v6, "aft1":Lscenelib/annotations/field/AnnotationFieldType;
    iget-object v7, p1, Lscenelib/annotations/el/AnnotationDef;->fieldTypes:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lscenelib/annotations/field/AnnotationFieldType;

    .line 294
    .local v7, "aft2":Lscenelib/annotations/field/AnnotationFieldType;
    if-nez v6, :cond_2

    move-object v8, v7

    goto :goto_1

    :cond_2
    if-nez v7, :cond_3

    move-object v8, v6

    goto :goto_1

    .line 296
    :cond_3
    invoke-static {v6, v7}, Lscenelib/annotations/field/AnnotationFieldType;->unify(Lscenelib/annotations/field/AnnotationFieldType;Lscenelib/annotations/field/AnnotationFieldType;)Lscenelib/annotations/field/AnnotationFieldType;

    move-result-object v8

    :goto_1
    nop

    .line 297
    .local v8, "uaft":Lscenelib/annotations/field/AnnotationFieldType;
    if-nez v8, :cond_4

    .line 298
    return-object v1

    .line 300
    :cond_4
    invoke-interface {v3, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    .end local v5    # "fieldName":Ljava/lang/String;
    .end local v6    # "aft1":Lscenelib/annotations/field/AnnotationFieldType;
    .end local v7    # "aft2":Lscenelib/annotations/field/AnnotationFieldType;
    .end local v8    # "uaft":Lscenelib/annotations/field/AnnotationFieldType;
    goto :goto_0

    .line 303
    :cond_5
    new-instance v1, Lscenelib/annotations/el/AnnotationDef;

    iget-object v4, p0, Lscenelib/annotations/el/AnnotationDef;->name:Ljava/lang/String;

    iget-object v5, p0, Lscenelib/annotations/el/AnnotationDef;->tlAnnotationsHere:Ljava/util/Set;

    iget-object v6, p0, Lscenelib/annotations/el/AnnotationDef;->source:Ljava/lang/String;

    iget-object v7, p1, Lscenelib/annotations/el/AnnotationDef;->source:Ljava/lang/String;

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    .line 304
    const-string v7, "unify(%s, %s)"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v4, v5, v3, v6}, Lscenelib/annotations/el/AnnotationDef;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;Ljava/lang/String;)V

    .line 303
    return-object v1

    .line 307
    .end local v0    # "ks1":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2    # "ks2":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "newFieldTypes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lscenelib/annotations/field/AnnotationFieldType;>;"
    :cond_6
    return-object v1
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 22
    invoke-virtual {p0}, Lscenelib/annotations/el/AnnotationDef;->clone()Lscenelib/annotations/el/AnnotationDef;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lscenelib/annotations/el/AElement;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lscenelib/annotations/el/AnnotationDef;->clone()Lscenelib/annotations/el/AnnotationDef;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lscenelib/annotations/el/AnnotationDef;
    .locals 2

    .line 125
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Can\'t duplicate an AnnotationDef"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 227
    instance-of v0, p1, Lscenelib/annotations/el/AnnotationDef;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lscenelib/annotations/el/AnnotationDef;

    .line 228
    invoke-virtual {v0, p0}, Lscenelib/annotations/el/AnnotationDef;->equals(Lscenelib/annotations/el/AnnotationDef;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 227
    :goto_0
    return v0
.end method

.method public equals(Lscenelib/annotations/el/AnnotationDef;)Z
    .locals 4
    .param p1, "o"    # Lscenelib/annotations/el/AnnotationDef;

    .line 240
    iget-object v0, p0, Lscenelib/annotations/el/AnnotationDef;->name:Ljava/lang/String;

    iget-object v1, p1, Lscenelib/annotations/el/AnnotationDef;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 241
    .local v0, "sameName":Z
    invoke-virtual {p0, p1}, Lscenelib/annotations/el/AnnotationDef;->equalsElement(Lscenelib/annotations/el/AElement;)Z

    move-result v1

    .line 242
    .local v1, "sameMetaAnnotations":Z
    iget-object v2, p0, Lscenelib/annotations/el/AnnotationDef;->fieldTypes:Ljava/util/Map;

    iget-object v3, p1, Lscenelib/annotations/el/AnnotationDef;->fieldTypes:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 250
    .local v2, "sameFieldTypes":Z
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method public hashCode()I
    .locals 2

    .line 257
    iget-object v0, p0, Lscenelib/annotations/el/AnnotationDef;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lscenelib/annotations/el/AnnotationDef;->fieldTypes:Ljava/util/Map;

    .line 261
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 257
    return v0
.end method

.method public isOnlyTypeAnnotation()Z
    .locals 2

    .line 215
    sget-object v0, Lscenelib/annotations/Annotations;->onlyTypeAnnotationTargets:Ljava/util/List;

    invoke-virtual {p0}, Lscenelib/annotations/el/AnnotationDef;->target()Lscenelib/annotations/Annotation;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 216
    .local v0, "result":Z
    return v0
.end method

.method public isTypeAnnotation()Z
    .locals 2

    .line 201
    invoke-virtual {p0}, Lscenelib/annotations/el/AnnotationDef;->targets()Ljava/util/List;

    move-result-object v0

    .line 202
    .local v0, "targets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    const-string v1, "TYPE_USE"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public retention()Ljava/lang/annotation/RetentionPolicy;
    .locals 2

    .line 152
    iget-object v0, p0, Lscenelib/annotations/el/AnnotationDef;->tlAnnotationsHere:Ljava/util/Set;

    sget-object v1, Lscenelib/annotations/Annotations;->aRetentionClass:Lscenelib/annotations/Annotation;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    sget-object v0, Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;

    return-object v0

    .line 154
    :cond_0
    iget-object v0, p0, Lscenelib/annotations/el/AnnotationDef;->tlAnnotationsHere:Ljava/util/Set;

    sget-object v1, Lscenelib/annotations/Annotations;->aRetentionRuntime:Lscenelib/annotations/Annotation;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    sget-object v0, Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;

    return-object v0

    .line 156
    :cond_1
    iget-object v0, p0, Lscenelib/annotations/el/AnnotationDef;->tlAnnotationsHere:Ljava/util/Set;

    sget-object v1, Lscenelib/annotations/Annotations;->aRetentionSource:Lscenelib/annotations/Annotation;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 157
    sget-object v0, Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;

    return-object v0

    .line 159
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public setFieldTypes(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lscenelib/annotations/field/AnnotationFieldType;",
            ">;)V"
        }
    .end annotation

    .line 137
    .local p1, "fieldTypes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Lscenelib/annotations/field/AnnotationFieldType;>;"
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lscenelib/annotations/el/AnnotationDef;->fieldTypes:Ljava/util/Map;

    .line 140
    return-void
.end method

.method public target()Lscenelib/annotations/Annotation;
    .locals 4

    .line 186
    iget-object v0, p0, Lscenelib/annotations/el/AnnotationDef;->tlAnnotationsHere:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscenelib/annotations/Annotation;

    .line 187
    .local v1, "anno":Lscenelib/annotations/Annotation;
    invoke-virtual {v1}, Lscenelib/annotations/Annotation;->def()Lscenelib/annotations/el/AnnotationDef;

    move-result-object v2

    sget-object v3, Lscenelib/annotations/Annotations;->adTarget:Lscenelib/annotations/el/AnnotationDef;

    invoke-virtual {v2, v3}, Lscenelib/annotations/el/AnnotationDef;->equals(Lscenelib/annotations/el/AnnotationDef;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 188
    return-object v1

    .line 190
    .end local v1    # "anno":Lscenelib/annotations/Annotation;
    :cond_0
    goto :goto_0

    .line 191
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public targets()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 170
    invoke-virtual {p0}, Lscenelib/annotations/el/AnnotationDef;->target()Lscenelib/annotations/Annotation;

    move-result-object v0

    .line 171
    .local v0, "target":Lscenelib/annotations/Annotation;
    if-nez v0, :cond_0

    .line 172
    const/4 v1, 0x0

    return-object v1

    .line 175
    :cond_0
    const-string v1, "value"

    invoke-virtual {v0, v1}, Lscenelib/annotations/Annotation;->getFieldValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 176
    .local v1, "fieldValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 313
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    const/4 v1, 0x1

    .line 318
    .local v1, "first":Z
    iget-object v2, p0, Lscenelib/annotations/el/AnnotationDef;->tlAnnotationsHere:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, " "

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscenelib/annotations/Annotation;

    .line 319
    .local v3, "a":Lscenelib/annotations/Annotation;
    if-nez v1, :cond_0

    .line 320
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 322
    :cond_0
    const/4 v1, 0x0

    .line 324
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 325
    .end local v3    # "a":Lscenelib/annotations/Annotation;
    goto :goto_0

    .line 326
    :cond_1
    const-string v2, "] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    const-string v2, "@"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    iget-object v2, p0, Lscenelib/annotations/el/AnnotationDef;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    const/4 v1, 0x1

    .line 331
    iget-object v2, p0, Lscenelib/annotations/el/AnnotationDef;->fieldTypes:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 332
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lscenelib/annotations/field/AnnotationFieldType;>;"
    if-nez v1, :cond_2

    .line 333
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 335
    :cond_2
    const/4 v1, 0x0

    .line 337
    :goto_3
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lscenelib/annotations/field/AnnotationFieldType;

    invoke-virtual {v5}, Lscenelib/annotations/field/AnnotationFieldType;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lscenelib/annotations/field/AnnotationFieldType;>;"
    goto :goto_2

    .line 341
    :cond_3
    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
