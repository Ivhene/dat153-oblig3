.class public Lorg/checkerframework/framework/stub/AddAnnotatedFor;
.super Ljava/lang/Object;
.source "AddAnnotatedFor.java"


# static fields
.field private static adAnnotatedFor:Lscenelib/annotations/el/AnnotationDef;

.field private static annotatedForVisitor:Lscenelib/annotations/el/ElementVisitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscenelib/annotations/el/ElementVisitor<",
            "Ljava/lang/Void;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 45
    const-class v0, Lorg/checkerframework/framework/qual/AnnotatedFor;

    .line 46
    .local v0, "annotatedFor":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 47
    .local v1, "annotatedForMetaAnnotations":Ljava/util/Set;, "Ljava/util/Set<Lscenelib/annotations/Annotation;>;"
    sget-object v2, Lscenelib/annotations/Annotations;->aRetentionSource:Lscenelib/annotations/Annotation;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v2, Lscenelib/annotations/Annotations;->adTarget:Lscenelib/annotations/el/AnnotationDef;

    const-string v3, "CONSTRUCTOR"

    const-string v4, "PACKAGE"

    const-string v5, "TYPE"

    const-string v6, "METHOD"

    filled-new-array {v5, v6, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    .line 51
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 49
    invoke-static {v2, v3}, Lscenelib/annotations/Annotations;->createValueAnnotation(Lscenelib/annotations/el/AnnotationDef;Ljava/lang/Object;)Lscenelib/annotations/Annotation;

    move-result-object v2

    .line 48
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 52
    new-instance v2, Lscenelib/annotations/el/AnnotationDef;

    .line 54
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lscenelib/annotations/field/ArrayAFT;

    const-class v5, Ljava/lang/String;

    .line 57
    invoke-static {v5}, Lscenelib/annotations/field/BasicAFT;->forType(Ljava/lang/Class;)Lscenelib/annotations/field/BasicAFT;

    move-result-object v5

    invoke-direct {v4, v5}, Lscenelib/annotations/field/ArrayAFT;-><init>(Lscenelib/annotations/field/ScalarAFT;)V

    .line 56
    const-string v5, "value"

    invoke-static {v5, v4}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    const-string v5, "AddAnnotatedFor.<clinit>"

    invoke-direct {v2, v3, v1, v4, v5}, Lscenelib/annotations/el/AnnotationDef;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;Ljava/lang/String;)V

    sput-object v2, Lorg/checkerframework/framework/stub/AddAnnotatedFor;->adAnnotatedFor:Lscenelib/annotations/el/AnnotationDef;

    .line 99
    .end local v0    # "annotatedFor":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "annotatedForMetaAnnotations":Ljava/util/Set;, "Ljava/util/Set<Lscenelib/annotations/Annotation;>;"
    new-instance v0, Lorg/checkerframework/framework/stub/AddAnnotatedFor$1;

    invoke-direct {v0}, Lorg/checkerframework/framework/stub/AddAnnotatedFor$1;-><init>()V

    sput-object v0, Lorg/checkerframework/framework/stub/AddAnnotatedFor;->annotatedForVisitor:Lscenelib/annotations/el/ElementVisitor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAnnotatedFor(Lscenelib/annotations/el/AScene;)V
    .locals 8
    .param p0, "scene"    # Lscenelib/annotations/el/AScene;

    .line 84
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lscenelib/annotations/el/AScene;->classes:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v1}, Lscenelib/annotations/util/coll/VivifyingMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscenelib/annotations/el/AClass;

    .line 85
    .local v1, "clazz":Lscenelib/annotations/el/AClass;
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 86
    .local v2, "annotatedFor":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v3, Lorg/checkerframework/framework/stub/AddAnnotatedFor;->annotatedForVisitor:Lscenelib/annotations/el/ElementVisitor;

    invoke-virtual {v1, v3, v2}, Lscenelib/annotations/el/AClass;->accept(Lscenelib/annotations/el/ElementVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 91
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 92
    .local v3, "annotatedForList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, v1, Lscenelib/annotations/el/AClass;->tlAnnotationsHere:Ljava/util/Set;

    new-instance v5, Lscenelib/annotations/Annotation;

    sget-object v6, Lorg/checkerframework/framework/stub/AddAnnotatedFor;->adAnnotatedFor:Lscenelib/annotations/el/AnnotationDef;

    .line 94
    invoke-static {v3}, Lscenelib/annotations/Annotations;->valueFieldOnly(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lscenelib/annotations/Annotation;-><init>(Lscenelib/annotations/el/AnnotationDef;Ljava/util/Map;)V

    .line 92
    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 96
    .end local v1    # "clazz":Lscenelib/annotations/el/AClass;
    .end local v2    # "annotatedFor":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "annotatedForList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    goto :goto_0

    .line 97
    :cond_1
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lscenelib/annotations/el/DefException;,
            Lscenelib/annotations/io/ParseException;
        }
    .end annotation

    .line 67
    new-instance v0, Lscenelib/annotations/el/AScene;

    invoke-direct {v0}, Lscenelib/annotations/el/AScene;-><init>()V

    .line 70
    .local v0, "scene":Lscenelib/annotations/el/AScene;
    array-length v1, p0

    if-lez v1, :cond_0

    .line 71
    const/4 v1, 0x0

    aget-object v1, p0, v1

    .line 72
    .local v1, "filename":Ljava/lang/String;
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .local v2, "r":Ljava/io/Reader;
    goto :goto_0

    .line 74
    .end local v1    # "filename":Ljava/lang/String;
    .end local v2    # "r":Ljava/io/Reader;
    :cond_0
    const-string v1, "System.in"

    .line 75
    .restart local v1    # "filename":Ljava/lang/String;
    new-instance v2, Ljava/io/InputStreamReader;

    sget-object v3, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 77
    .restart local v2    # "r":Ljava/io/Reader;
    :goto_0
    new-instance v3, Ljava/io/LineNumberReader;

    invoke-direct {v3, v2}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    invoke-static {v3, v1, v0}, Lscenelib/annotations/io/IndexFileParser;->parse(Ljava/io/LineNumberReader;Ljava/lang/String;Lscenelib/annotations/el/AScene;)Ljava/util/Map;

    .line 78
    invoke-virtual {v0}, Lscenelib/annotations/el/AScene;->prune()V

    .line 79
    invoke-static {v0}, Lorg/checkerframework/framework/stub/AddAnnotatedFor;->addAnnotatedFor(Lscenelib/annotations/el/AScene;)V

    .line 80
    new-instance v3, Ljava/io/PrintWriter;

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    invoke-static {v0, v3}, Lscenelib/annotations/io/IndexFileWriter;->write(Lscenelib/annotations/el/AScene;Ljava/io/Writer;)V

    .line 81
    return-void
.end method
