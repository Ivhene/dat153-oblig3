.class public Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader;
.super Lorg/checkerframework/org/objectweb/asmx/commons/EmptyVisitor;
.source "ClassAnnotationSceneReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$MethodAnnotationSceneReader;,
        Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$FieldAnnotationSceneReader;,
        Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$ArrayAnnotationSceneReader;,
        Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$NestedAnnotationSceneReader;,
        Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;
    }
.end annotation


# static fields
.field private static final strict:Z = false

.field private static final trace:Z = false


# instance fields
.field private aClass:Lscenelib/annotations/el/AClass;

.field private final annotationDefinitions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lscenelib/annotations/el/AnnotationDef;",
            ">;"
        }
    .end annotation
.end field

.field private final classReader:Lorg/checkerframework/org/objectweb/asmx/ClassReader;

.field dummyDesc:Ljava/lang/String;

.field private final ignoreBridgeMethods:Z

.field private final scene:Lscenelib/annotations/el/AScene;


# direct methods
.method public constructor <init>(Lorg/checkerframework/org/objectweb/asmx/ClassReader;Lscenelib/annotations/el/AScene;Z)V
    .locals 1
    .param p1, "classReader"    # Lorg/checkerframework/org/objectweb/asmx/ClassReader;
    .param p2, "scene"    # Lscenelib/annotations/el/AScene;
    .param p3, "ignoreBridgeMethods"    # Z

    .line 102
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/commons/EmptyVisitor;-><init>()V

    .line 81
    invoke-static {}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader;->initialiseAnnotationDefinitions()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader;->annotationDefinitions:Ljava/util/Map;

    .line 184
    const-string v0, "dummy"

    iput-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader;->dummyDesc:Ljava/lang/String;

    .line 103
    iput-object p1, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader;->classReader:Lorg/checkerframework/org/objectweb/asmx/ClassReader;

    .line 104
    iput-object p2, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader;->scene:Lscenelib/annotations/el/AScene;

    .line 105
    iput-boolean p3, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader;->ignoreBridgeMethods:Z

    .line 106
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 51
    invoke-static {p0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader;->classDescToName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader;

    .line 51
    iget-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader;->annotationDefinitions:Ljava/util/Map;

    return-object v0
.end method

.method private static classDescToName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "descriptor"    # Ljava/lang/String;

    .line 175
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static initialiseAnnotationDefinitions()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lscenelib/annotations/el/AnnotationDef;",
            ">;"
        }
    .end annotation

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 84
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lscenelib/annotations/el/AnnotationDef;>;"
    sget-object v1, Lscenelib/annotations/Annotations;->standardDefs:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscenelib/annotations/el/AnnotationDef;

    .line 85
    .local v2, "ad":Lscenelib/annotations/el/AnnotationDef;
    iget-object v3, v2, Lscenelib/annotations/el/AnnotationDef;->name:Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .end local v2    # "ad":Lscenelib/annotations/el/AnnotationDef;
    goto :goto_0

    .line 87
    :cond_0
    return-object v0
.end method

.method public static printClasspath()V
    .locals 4

    .line 1233
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Classpath:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1234
    new-instance v0, Ljava/util/StringTokenizer;

    .line 1235
    const-string v1, "java.class.path"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1237
    .local v0, "tokenizer":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1238
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1240
    :cond_0
    return-void
.end method


# virtual methods
.method public visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .param p1, "version"    # I
    .param p2, "access"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "superName"    # Ljava/lang/String;
    .param p6, "interfaces"    # [Ljava/lang/String;

    .line 114
    iget-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader;->scene:Lscenelib/annotations/el/AScene;

    iget-object v0, v0, Lscenelib/annotations/el/AScene;->classes:Lscenelib/annotations/util/coll/VivifyingMap;

    const/16 v1, 0x2f

    const/16 v2, 0x2e

    invoke-virtual {p3, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscenelib/annotations/el/AClass;

    iput-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader;->aClass:Lscenelib/annotations/el/AClass;

    .line 115
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .line 123
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader;->visitTypeAnnotation(Ljava/lang/String;ZZ)Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;

    move-result-object v0

    return-object v0
.end method

.method public visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;
    .locals 9
    .param p1, "access"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "descriptor"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/Object;

    .line 146
    iget-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader;->aClass:Lscenelib/annotations/el/AClass;

    iget-object v0, v0, Lscenelib/annotations/el/AClass;->fields:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0, p2}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscenelib/annotations/el/AField;

    .line 147
    .local v0, "aField":Lscenelib/annotations/el/AField;
    new-instance v8, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$FieldAnnotationSceneReader;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$FieldAnnotationSceneReader;-><init>(Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lscenelib/annotations/el/AElement;)V

    return-object v8
.end method

.method public visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;
    .locals 8
    .param p1, "access"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "descriptor"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "exceptions"    # [Ljava/lang/String;

    .line 160
    iget-boolean v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader;->ignoreBridgeMethods:Z

    if-eqz v0, :cond_0

    and-int/lit8 v0, p1, 0x40

    if-eqz v0, :cond_0

    .line 161
    const/4 v0, 0x0

    return-object v0

    .line 164
    :cond_0
    iget-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader;->aClass:Lscenelib/annotations/el/AClass;

    iget-object v0, v0, Lscenelib/annotations/el/AClass;->methods:Lscenelib/annotations/util/coll/VivifyingMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscenelib/annotations/el/AMethod;

    .line 165
    .local v0, "aMethod":Lscenelib/annotations/el/AMethod;
    new-instance v7, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$MethodAnnotationSceneReader;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$MethodAnnotationSceneReader;-><init>(Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lscenelib/annotations/el/AElement;)V

    return-object v7
.end method

.method public visitTypeAnnotation(Ljava/lang/String;ZZ)Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    .locals 2
    .param p1, "descriptor"    # Ljava/lang/String;
    .param p2, "visible"    # Z
    .param p3, "inCode"    # Z

    .line 132
    new-instance v0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;

    iget-object v1, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader;->aClass:Lscenelib/annotations/el/AClass;

    invoke-direct {v0, p0, p1, p2, v1}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;-><init>(Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader;Ljava/lang/String;ZLscenelib/annotations/el/AElement;)V

    return-object v0
.end method
