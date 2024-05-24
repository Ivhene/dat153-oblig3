.class public Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;
.super Lorg/checkerframework/org/objectweb/asmx/ClassAdapter;
.source "ClassAnnotationSceneWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodCodeIndexer;,
        Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;,
        Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$FieldAnnotationSceneWriter;
    }
.end annotation


# static fields
.field private static final strict:Z = false


# instance fields
.field private aClass:Lscenelib/annotations/el/AClass;

.field private classReader:Lorg/checkerframework/org/objectweb/asmx/ClassReader;

.field private final dynamicConstructors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final existingClassAnnotations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private hasVisitedClassAnnotationsInScene:Z

.field private final lambdaExpressions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final overwrite:Z

.field private final scene:Lscenelib/annotations/el/AScene;


# direct methods
.method public constructor <init>(Lorg/checkerframework/org/objectweb/asmx/ClassReader;Lscenelib/annotations/el/AScene;Z)V
    .locals 2
    .param p1, "classReader"    # Lorg/checkerframework/org/objectweb/asmx/ClassReader;
    .param p2, "scene"    # Lscenelib/annotations/el/AScene;
    .param p3, "overwrite"    # Z

    .line 137
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;-><init>(Lorg/checkerframework/org/objectweb/asmx/ClassReader;Z)V

    invoke-direct {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassAdapter;-><init>(Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;)V

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->classReader:Lorg/checkerframework/org/objectweb/asmx/ClassReader;

    .line 138
    iput-object p2, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->scene:Lscenelib/annotations/el/AScene;

    .line 139
    iput-boolean v1, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->hasVisitedClassAnnotationsInScene:Z

    .line 140
    iput-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->aClass:Lscenelib/annotations/el/AClass;

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->existingClassAnnotations:Ljava/util/List;

    .line 142
    iput-boolean p3, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->overwrite:Z

    .line 143
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->dynamicConstructors:Ljava/util/Map;

    .line 144
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->lambdaExpressions:Ljava/util/Map;

    .line 145
    iput-object p1, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->classReader:Lorg/checkerframework/org/objectweb/asmx/ClassReader;

    .line 146
    return-void
.end method

.method static synthetic access$000(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;)Lscenelib/annotations/el/AClass;
    .locals 1
    .param p0, "x0"    # Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    .line 65
    iget-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->aClass:Lscenelib/annotations/el/AClass;

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 65
    invoke-static {p0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->classDescToName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lscenelib/annotations/el/BoundLocation;)V
    .locals 0
    .param p0, "x0"    # Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;
    .param p1, "x1"    # Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    .param p2, "x2"    # Lscenelib/annotations/el/BoundLocation;

    .line 65
    invoke-direct {p0, p1, p2}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->visitBound(Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lscenelib/annotations/el/BoundLocation;)V

    return-void
.end method

.method static synthetic access$1100(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lscenelib/annotations/el/LocalLocation;)V
    .locals 0
    .param p0, "x0"    # Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;
    .param p1, "x1"    # Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    .param p2, "x2"    # Lscenelib/annotations/el/LocalLocation;

    .line 65
    invoke-direct {p0, p1, p2}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->visitLocalVar(Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lscenelib/annotations/el/LocalLocation;)V

    return-void
.end method

.method static synthetic access$1200(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;I)V
    .locals 0
    .param p0, "x0"    # Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;
    .param p1, "x1"    # Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    .param p2, "x2"    # I

    .line 65
    invoke-direct {p0, p1, p2}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->visitOffset(Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;I)V

    return-void
.end method

.method static synthetic access$1300(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;I)V
    .locals 0
    .param p0, "x0"    # Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;
    .param p1, "x1"    # Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    .param p2, "x2"    # I

    .line 65
    invoke-direct {p0, p1, p2}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->visitParameterIndex(Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;I)V

    return-void
.end method

.method static synthetic access$1400(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;I)V
    .locals 0
    .param p0, "x0"    # Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;
    .param p1, "x1"    # Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    .param p2, "x2"    # I

    .line 65
    invoke-direct {p0, p1, p2}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->visitTypeIndex(Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;I)V

    return-void
.end method

.method static synthetic access$1500(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    .line 65
    iget-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->lambdaExpressions:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1600(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    .line 65
    iget-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->dynamicConstructors:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1700(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;)Lorg/checkerframework/org/objectweb/asmx/ClassReader;
    .locals 1
    .param p0, "x0"    # Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    .line 65
    iget-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->classReader:Lorg/checkerframework/org/objectweb/asmx/ClassReader;

    return-object v0
.end method

.method static synthetic access$200(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;)Z
    .locals 1
    .param p0, "x0"    # Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    .line 65
    iget-boolean v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->overwrite:Z

    return v0
.end method

.method static synthetic access$300(Lscenelib/annotations/Annotation;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lscenelib/annotations/Annotation;

    .line 65
    invoke-static {p0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->name(Lscenelib/annotations/Annotation;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 65
    invoke-static {p0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->classNameToDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lscenelib/annotations/Annotation;)Z
    .locals 1
    .param p0, "x0"    # Lscenelib/annotations/Annotation;

    .line 65
    invoke-static {p0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->isRuntimeRetention(Lscenelib/annotations/Annotation;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;Lscenelib/annotations/Annotation;)V
    .locals 0
    .param p0, "x0"    # Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;
    .param p1, "x1"    # Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .param p2, "x2"    # Lscenelib/annotations/Annotation;

    .line 65
    invoke-direct {p0, p1, p2}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->visitFields(Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;Lscenelib/annotations/Annotation;)V

    return-void
.end method

.method static synthetic access$700(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lcom/sun/tools/javac/code/TargetType;)V
    .locals 0
    .param p0, "x0"    # Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;
    .param p1, "x1"    # Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    .param p2, "x2"    # Lcom/sun/tools/javac/code/TargetType;

    .line 65
    invoke-direct {p0, p1, p2}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->visitTargetType(Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lcom/sun/tools/javac/code/TargetType;)V

    return-void
.end method

.method static synthetic access$800(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lscenelib/annotations/el/InnerTypeLocation;)V
    .locals 0
    .param p0, "x0"    # Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;
    .param p1, "x1"    # Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    .param p2, "x2"    # Lscenelib/annotations/el/InnerTypeLocation;

    .line 65
    invoke-direct {p0, p1, p2}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->visitLocations(Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lscenelib/annotations/el/InnerTypeLocation;)V

    return-void
.end method

.method static synthetic access$900(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lscenelib/annotations/Annotation;)V
    .locals 0
    .param p0, "x0"    # Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;
    .param p1, "x1"    # Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    .param p2, "x2"    # Lscenelib/annotations/Annotation;

    .line 65
    invoke-direct {p0, p1, p2}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->visitFields(Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lscenelib/annotations/Annotation;)V

    return-void
.end method

.method private static classDescToName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "descriptor"    # Ljava/lang/String;

    .line 334
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

.method private static classNameToDesc(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "L"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private ensureVisitSceneClassAnnotations()V
    .locals 12

    .line 235
    iget-boolean v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->hasVisitedClassAnnotationsInScene:Z

    if-nez v0, :cond_7

    .line 236
    const/4 v0, 0x1

    iput-boolean v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->hasVisitedClassAnnotationsInScene:Z

    .line 237
    iget-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->aClass:Lscenelib/annotations/el/AClass;

    iget-object v0, v0, Lscenelib/annotations/el/AClass;->tlAnnotationsHere:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscenelib/annotations/Annotation;

    .line 240
    .local v1, "tla":Lscenelib/annotations/Annotation;
    iget-boolean v2, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->overwrite:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->existingClassAnnotations:Ljava/util/List;

    invoke-static {v1}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->name(Lscenelib/annotations/Annotation;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 241
    goto :goto_0

    .line 244
    :cond_0
    invoke-direct {p0, v1}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->visitAnnotation(Lscenelib/annotations/Annotation;)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;

    move-result-object v2

    .line 245
    .local v2, "av":Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    invoke-direct {p0, v2, v1}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->visitFields(Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;Lscenelib/annotations/Annotation;)V

    .line 246
    invoke-interface {v2}, Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;->visitEnd()V

    .line 247
    .end local v1    # "tla":Lscenelib/annotations/Annotation;
    .end local v2    # "av":Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    goto :goto_0

    .line 251
    :cond_1
    iget-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->aClass:Lscenelib/annotations/el/AClass;

    iget-object v0, v0, Lscenelib/annotations/el/AClass;->bounds:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 252
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/BoundLocation;Lscenelib/annotations/el/ATypeElement;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscenelib/annotations/el/BoundLocation;

    .line 253
    .local v2, "bloc":Lscenelib/annotations/el/BoundLocation;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscenelib/annotations/el/ATypeElement;

    .line 255
    .local v3, "bound":Lscenelib/annotations/el/ATypeElement;
    iget-object v4, v3, Lscenelib/annotations/el/ATypeElement;->tlAnnotationsHere:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lscenelib/annotations/Annotation;

    .line 256
    .local v5, "tla":Lscenelib/annotations/Annotation;
    invoke-direct {p0, v5}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->visitTypeAnnotation(Lscenelib/annotations/Annotation;)Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;

    move-result-object v6

    .line 258
    .local v6, "xav":Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    iget v7, v2, Lscenelib/annotations/el/BoundLocation;->boundIndex:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_2

    .line 259
    sget-object v7, Lcom/sun/tools/javac/code/TargetType;->CLASS_TYPE_PARAMETER:Lcom/sun/tools/javac/code/TargetType;

    invoke-direct {p0, v6, v7}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->visitTargetType(Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lcom/sun/tools/javac/code/TargetType;)V

    .line 260
    invoke-direct {p0, v6, v2}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->visitBound(Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lscenelib/annotations/el/BoundLocation;)V

    goto :goto_3

    .line 262
    :cond_2
    sget-object v7, Lcom/sun/tools/javac/code/TargetType;->CLASS_TYPE_PARAMETER_BOUND:Lcom/sun/tools/javac/code/TargetType;

    invoke-direct {p0, v6, v7}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->visitTargetType(Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lcom/sun/tools/javac/code/TargetType;)V

    .line 263
    invoke-direct {p0, v6, v2}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->visitBound(Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lscenelib/annotations/el/BoundLocation;)V

    .line 265
    :goto_3
    sget-object v7, Lscenelib/annotations/el/InnerTypeLocation;->EMPTY_INNER_TYPE_LOCATION:Lscenelib/annotations/el/InnerTypeLocation;

    invoke-direct {p0, v6, v7}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->visitLocations(Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lscenelib/annotations/el/InnerTypeLocation;)V

    .line 266
    invoke-direct {p0, v6, v5}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->visitFields(Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lscenelib/annotations/Annotation;)V

    .line 267
    invoke-interface {v6}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;->visitEnd()V

    .line 268
    .end local v5    # "tla":Lscenelib/annotations/Annotation;
    .end local v6    # "xav":Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    goto :goto_2

    .line 271
    :cond_3
    iget-object v4, v3, Lscenelib/annotations/el/ATypeElement;->innerTypes:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v4}, Lscenelib/annotations/util/coll/VivifyingMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 272
    .local v5, "e2":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/InnerTypeLocation;Lscenelib/annotations/el/ATypeElement;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lscenelib/annotations/el/InnerTypeLocation;

    .line 273
    .local v6, "itloc":Lscenelib/annotations/el/InnerTypeLocation;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lscenelib/annotations/el/ATypeElement;

    .line 275
    .local v7, "innerType":Lscenelib/annotations/el/ATypeElement;
    iget-object v8, v7, Lscenelib/annotations/el/ATypeElement;->tlAnnotationsHere:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lscenelib/annotations/Annotation;

    .line 276
    .local v9, "tla":Lscenelib/annotations/Annotation;
    invoke-direct {p0, v9}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->visitTypeAnnotation(Lscenelib/annotations/Annotation;)Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;

    move-result-object v10

    .line 278
    .local v10, "xav":Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    sget-object v11, Lcom/sun/tools/javac/code/TargetType;->CLASS_TYPE_PARAMETER_BOUND:Lcom/sun/tools/javac/code/TargetType;

    invoke-direct {p0, v10, v11}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->visitTargetType(Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lcom/sun/tools/javac/code/TargetType;)V

    .line 279
    invoke-direct {p0, v10, v2}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->visitBound(Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lscenelib/annotations/el/BoundLocation;)V

    .line 280
    invoke-direct {p0, v10, v6}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->visitLocations(Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lscenelib/annotations/el/InnerTypeLocation;)V

    .line 281
    invoke-direct {p0, v10, v9}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->visitFields(Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lscenelib/annotations/Annotation;)V

    .line 282
    invoke-interface {v10}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;->visitEnd()V

    .line 283
    .end local v9    # "tla":Lscenelib/annotations/Annotation;
    .end local v10    # "xav":Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    goto :goto_5

    .line 284
    .end local v5    # "e2":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/InnerTypeLocation;Lscenelib/annotations/el/ATypeElement;>;"
    .end local v6    # "itloc":Lscenelib/annotations/el/InnerTypeLocation;
    .end local v7    # "innerType":Lscenelib/annotations/el/ATypeElement;
    :cond_4
    goto :goto_4

    .line 285
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/BoundLocation;Lscenelib/annotations/el/ATypeElement;>;"
    .end local v2    # "bloc":Lscenelib/annotations/el/BoundLocation;
    .end local v3    # "bound":Lscenelib/annotations/el/ATypeElement;
    :cond_5
    goto/16 :goto_1

    .line 287
    :cond_6
    iget-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->aClass:Lscenelib/annotations/el/AClass;

    iget-object v0, v0, Lscenelib/annotations/el/AClass;->extendsImplements:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 288
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/TypeIndexLocation;Lscenelib/annotations/el/ATypeElement;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscenelib/annotations/el/TypeIndexLocation;

    .line 289
    .local v2, "idx":Lscenelib/annotations/el/TypeIndexLocation;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscenelib/annotations/el/ATypeElement;

    .line 293
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/TypeIndexLocation;Lscenelib/annotations/el/ATypeElement;>;"
    .end local v2    # "idx":Lscenelib/annotations/el/TypeIndexLocation;
    goto :goto_6

    .line 296
    :cond_7
    return-void
.end method

.method private static isRuntimeRetention(Lscenelib/annotations/Annotation;)Z
    .locals 2
    .param p0, "tla"    # Lscenelib/annotations/Annotation;

    .line 305
    iget-object v0, p0, Lscenelib/annotations/Annotation;->def:Lscenelib/annotations/el/AnnotationDef;

    invoke-virtual {v0}, Lscenelib/annotations/el/AnnotationDef;->retention()Ljava/lang/annotation/RetentionPolicy;

    move-result-object v0

    if-nez v0, :cond_0

    .line 306
    const/4 v0, 0x0

    return v0

    .line 308
    :cond_0
    iget-object v0, p0, Lscenelib/annotations/Annotation;->def:Lscenelib/annotations/el/AnnotationDef;

    invoke-virtual {v0}, Lscenelib/annotations/el/AnnotationDef;->retention()Ljava/lang/annotation/RetentionPolicy;

    move-result-object v0

    sget-object v1, Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;

    invoke-virtual {v0, v1}, Ljava/lang/annotation/RetentionPolicy;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static name(Lscenelib/annotations/Annotation;)Ljava/lang/String;
    .locals 1
    .param p0, "tla"    # Lscenelib/annotations/Annotation;

    .line 315
    invoke-virtual {p0}, Lscenelib/annotations/Annotation;->def()Lscenelib/annotations/el/AnnotationDef;

    move-result-object v0

    iget-object v0, v0, Lscenelib/annotations/el/AnnotationDef;->name:Ljava/lang/String;

    return-object v0
.end method

.method private visitAnnotation(Lscenelib/annotations/Annotation;)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .locals 2
    .param p1, "tla"    # Lscenelib/annotations/Annotation;

    .line 341
    invoke-static {p1}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->name(Lscenelib/annotations/Annotation;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->classNameToDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->isRuntimeRetention(Lscenelib/annotations/Annotation;)Z

    move-result v1

    invoke-super {p0, v0, v1}, Lorg/checkerframework/org/objectweb/asmx/ClassAdapter;->visitAnnotation(Ljava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;

    move-result-object v0

    return-object v0
.end method

.method private visitBound(Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lscenelib/annotations/el/BoundLocation;)V
    .locals 2
    .param p1, "xav"    # Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    .param p2, "loc"    # Lscenelib/annotations/el/BoundLocation;

    .line 450
    iget v0, p2, Lscenelib/annotations/el/BoundLocation;->paramIndex:I

    invoke-interface {p1, v0}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;->visitXParamIndex(I)V

    .line 451
    iget v0, p2, Lscenelib/annotations/el/BoundLocation;->boundIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 452
    iget v0, p2, Lscenelib/annotations/el/BoundLocation;->boundIndex:I

    invoke-interface {p1, v0}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;->visitXBoundIndex(I)V

    .line 454
    :cond_0
    return-void
.end method

.method private visitFields(Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;Lscenelib/annotations/Annotation;)V
    .locals 10
    .param p1, "av"    # Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .param p2, "a"    # Lscenelib/annotations/Annotation;

    .line 367
    invoke-virtual {p2}, Lscenelib/annotations/Annotation;->def()Lscenelib/annotations/el/AnnotationDef;

    move-result-object v0

    iget-object v0, v0, Lscenelib/annotations/el/AnnotationDef;->fieldTypes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 368
    .local v1, "fieldName":Ljava/lang/String;
    invoke-virtual {p2, v1}, Lscenelib/annotations/Annotation;->getFieldValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 369
    .local v2, "value":Ljava/lang/Object;
    if-nez v2, :cond_0

    .line 371
    goto :goto_0

    .line 373
    :cond_0
    invoke-virtual {p2}, Lscenelib/annotations/Annotation;->def()Lscenelib/annotations/el/AnnotationDef;

    move-result-object v3

    iget-object v3, v3, Lscenelib/annotations/el/AnnotationDef;->fieldTypes:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscenelib/annotations/field/AnnotationFieldType;

    .line 374
    .local v3, "aft":Lscenelib/annotations/field/AnnotationFieldType;
    instance-of v4, v2, Lscenelib/annotations/Annotation;

    if-eqz v4, :cond_1

    .line 375
    invoke-virtual {p2}, Lscenelib/annotations/Annotation;->def()Lscenelib/annotations/el/AnnotationDef;

    move-result-object v4

    iget-object v4, v4, Lscenelib/annotations/el/AnnotationDef;->name:Ljava/lang/String;

    invoke-static {v4}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->classDescToName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v1, v4}, Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;->visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;

    move-result-object v4

    .line 376
    .local v4, "nav":Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    invoke-direct {p0, v4, p2}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->visitFields(Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;Lscenelib/annotations/Annotation;)V

    .line 377
    invoke-interface {v4}, Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;->visitEnd()V

    .line 378
    .end local v4    # "nav":Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    goto :goto_3

    :cond_1
    instance-of v4, v2, Ljava/util/List;

    if-eqz v4, :cond_4

    .line 382
    invoke-interface {p1, v1}, Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;->visitArray(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;

    move-result-object v4

    .line 383
    .local v4, "aav":Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    move-object v5, v3

    check-cast v5, Lscenelib/annotations/field/ArrayAFT;

    iget-object v3, v5, Lscenelib/annotations/field/ArrayAFT;->elementType:Lscenelib/annotations/field/ScalarAFT;

    .line 384
    move-object v5, v2

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 385
    .local v6, "o":Ljava/lang/Object;
    instance-of v7, v3, Lscenelib/annotations/field/EnumAFT;

    const/4 v8, 0x0

    if-eqz v7, :cond_2

    .line 386
    move-object v7, v3

    check-cast v7, Lscenelib/annotations/field/EnumAFT;

    iget-object v7, v7, Lscenelib/annotations/field/EnumAFT;->typeName:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v8, v7, v9}, Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;->visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 388
    :cond_2
    invoke-interface {v4, v8, v6}, Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 390
    .end local v6    # "o":Ljava/lang/Object;
    :goto_2
    goto :goto_1

    .line 391
    :cond_3
    invoke-interface {v4}, Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;->visitEnd()V

    .line 392
    .end local v4    # "aav":Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    goto :goto_3

    :cond_4
    instance-of v4, v3, Lscenelib/annotations/field/EnumAFT;

    if-eqz v4, :cond_5

    .line 393
    move-object v4, v3

    check-cast v4, Lscenelib/annotations/field/EnumAFT;

    iget-object v4, v4, Lscenelib/annotations/field/EnumAFT;->typeName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v1, v4, v5}, Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;->visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 394
    :cond_5
    instance-of v4, v3, Lscenelib/annotations/field/ClassTokenAFT;

    if-eqz v4, :cond_6

    .line 395
    move-object v4, v2

    check-cast v4, Ljava/lang/Class;

    invoke-static {v4}, Lorg/checkerframework/org/objectweb/asmx/Type;->getType(Ljava/lang/Class;)Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v4

    invoke-interface {p1, v1, v4}, Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 398
    :cond_6
    invoke-interface {p1, v1, v2}, Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 400
    .end local v1    # "fieldName":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/Object;
    .end local v3    # "aft":Lscenelib/annotations/field/AnnotationFieldType;
    :goto_3
    goto/16 :goto_0

    .line 401
    :cond_7
    return-void
.end method

.method private visitFields(Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lscenelib/annotations/Annotation;)V
    .locals 0
    .param p1, "tav"    # Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    .param p2, "a"    # Lscenelib/annotations/Annotation;

    .line 355
    invoke-interface {p1}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;->visitXNameAndArgsSize()V

    .line 356
    invoke-direct {p0, p1, p2}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->visitFields(Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;Lscenelib/annotations/Annotation;)V

    .line 357
    return-void
.end method

.method private visitLocalVar(Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lscenelib/annotations/el/LocalLocation;)V
    .locals 1
    .param p1, "xav"    # Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    .param p2, "loc"    # Lscenelib/annotations/el/LocalLocation;

    .line 425
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;->visitXNumEntries(I)V

    .line 426
    iget v0, p2, Lscenelib/annotations/el/LocalLocation;->scopeStart:I

    invoke-interface {p1, v0}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;->visitXStartPc(I)V

    .line 427
    iget v0, p2, Lscenelib/annotations/el/LocalLocation;->scopeLength:I

    invoke-interface {p1, v0}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;->visitXLength(I)V

    .line 428
    iget v0, p2, Lscenelib/annotations/el/LocalLocation;->index:I

    invoke-interface {p1, v0}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;->visitXIndex(I)V

    .line 429
    return-void
.end method

.method private visitLocations(Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lscenelib/annotations/el/InnerTypeLocation;)V
    .locals 3
    .param p1, "xav"    # Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    .param p2, "loc"    # Lscenelib/annotations/el/InnerTypeLocation;

    .line 414
    iget-object v0, p2, Lscenelib/annotations/el/InnerTypeLocation;->location:Ljava/util/List;

    .line 415
    .local v0, "location":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1, v1}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;->visitXLocationLength(I)V

    .line 416
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;

    .line 417
    .local v2, "l":Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;
    invoke-interface {p1, v2}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;->visitXLocation(Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;)V

    .line 418
    .end local v2    # "l":Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;
    goto :goto_0

    .line 419
    :cond_0
    return-void
.end method

.method private visitOffset(Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;I)V
    .locals 0
    .param p1, "xav"    # Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    .param p2, "offset"    # I

    .line 435
    invoke-interface {p1, p2}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;->visitXOffset(I)V

    .line 436
    return-void
.end method

.method private visitParameterIndex(Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;I)V
    .locals 0
    .param p1, "xav"    # Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    .param p2, "index"    # I

    .line 439
    invoke-interface {p1, p2}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;->visitXParamIndex(I)V

    .line 440
    return-void
.end method

.method private visitTargetType(Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lcom/sun/tools/javac/code/TargetType;)V
    .locals 1
    .param p1, "xav"    # Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    .param p2, "t"    # Lcom/sun/tools/javac/code/TargetType;

    .line 407
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/TargetType;->targetTypeValue()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;->visitXTargetType(I)V

    .line 408
    return-void
.end method

.method private visitTypeAnnotation(Lscenelib/annotations/Annotation;)Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    .locals 3
    .param p1, "tla"    # Lscenelib/annotations/Annotation;

    .line 348
    invoke-static {p1}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->name(Lscenelib/annotations/Annotation;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->classNameToDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->isRuntimeRetention(Lscenelib/annotations/Annotation;)Z

    move-result v1

    const/4 v2, 0x0

    invoke-super {p0, v0, v1, v2}, Lorg/checkerframework/org/objectweb/asmx/ClassAdapter;->visitTypeAnnotation(Ljava/lang/String;ZZ)Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;

    move-result-object v0

    return-object v0
.end method

.method private visitTypeIndex(Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;I)V
    .locals 0
    .param p1, "xav"    # Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    .param p2, "index"    # I

    .line 443
    invoke-interface {p1, p2}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;->visitXTypeIndex(I)V

    .line 444
    return-void
.end method


# virtual methods
.method public toByteArray()[B
    .locals 1

    .line 158
    iget-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->cv:Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;

    check-cast v0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    invoke-virtual {v0}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .param p1, "version"    # I
    .param p2, "access"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "superName"    # Ljava/lang/String;
    .param p6, "interfaces"    # [Ljava/lang/String;

    .line 164
    iget-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->classReader:Lorg/checkerframework/org/objectweb/asmx/ClassReader;

    new-instance v1, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodCodeIndexer;

    invoke-direct {v1, p0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodCodeIndexer;-><init>(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->accept(Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;Z)V

    .line 165
    invoke-super/range {p0 .. p6}, Lorg/checkerframework/org/objectweb/asmx/ClassAdapter;->visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 167
    const/16 v0, 0x2f

    const/16 v1, 0x2e

    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p3

    .line 168
    iget-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->scene:Lscenelib/annotations/el/AScene;

    iget-object v0, v0, Lscenelib/annotations/el/AScene;->classes:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0, p3}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscenelib/annotations/el/AClass;

    iput-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->aClass:Lscenelib/annotations/el/AClass;

    .line 169
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .locals 2
    .param p1, "descriptor"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .line 207
    iget-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->existingClassAnnotations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    iget-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->aClass:Lscenelib/annotations/el/AClass;

    invoke-static {p1}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->classDescToName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscenelib/annotations/el/AClass;->lookup(Ljava/lang/String;)Lscenelib/annotations/Annotation;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->overwrite:Z

    if-eqz v0, :cond_0

    .line 212
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/commons/EmptyVisitor;

    invoke-direct {v0}, Lorg/checkerframework/org/objectweb/asmx/commons/EmptyVisitor;-><init>()V

    return-object v0

    .line 214
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/ClassAdapter;->visitAnnotation(Ljava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;

    move-result-object v0

    return-object v0
.end method

.method public visitEnd()V
    .locals 0

    .line 201
    invoke-direct {p0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->ensureVisitSceneClassAnnotations()V

    .line 202
    invoke-super {p0}, Lorg/checkerframework/org/objectweb/asmx/ClassAdapter;->visitEnd()V

    .line 203
    return-void
.end method

.method public visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;
    .locals 2
    .param p1, "access"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "descriptor"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/Object;

    .line 180
    invoke-direct {p0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->ensureVisitSceneClassAnnotations()V

    .line 183
    new-instance v0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$FieldAnnotationSceneWriter;

    .line 184
    invoke-super/range {p0 .. p5}, Lorg/checkerframework/org/objectweb/asmx/ClassAdapter;->visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;

    move-result-object v1

    invoke-direct {v0, p0, p2, v1}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$FieldAnnotationSceneWriter;-><init>(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Ljava/lang/String;Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;)V

    .line 183
    return-object v0
.end method

.method public visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "outerName"    # Ljava/lang/String;
    .param p3, "innerName"    # Ljava/lang/String;
    .param p4, "access"    # I

    .line 173
    invoke-direct {p0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->ensureVisitSceneClassAnnotations()V

    .line 174
    invoke-super {p0, p1, p2, p3, p4}, Lorg/checkerframework/org/objectweb/asmx/ClassAdapter;->visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 175
    return-void
.end method

.method public visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;
    .locals 3
    .param p1, "access"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "descriptor"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "exceptions"    # [Ljava/lang/String;

    .line 190
    invoke-direct {p0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->ensureVisitSceneClassAnnotations()V

    .line 195
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/MethodAdapter;

    new-instance v1, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;

    .line 196
    invoke-super/range {p0 .. p5}, Lorg/checkerframework/org/objectweb/asmx/ClassAdapter;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    move-result-object v2

    invoke-direct {v1, p0, p2, p3, v2}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;-><init>(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Ljava/lang/String;Ljava/lang/String;Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;)V

    invoke-direct {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/MethodAdapter;-><init>(Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;)V

    .line 195
    return-object v0
.end method

.method public visitTypeAnnotation(Ljava/lang/String;ZZ)Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    .locals 2
    .param p1, "descriptor"    # Ljava/lang/String;
    .param p2, "visible"    # Z
    .param p3, "inCode"    # Z

    .line 219
    iget-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->existingClassAnnotations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    iget-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->aClass:Lscenelib/annotations/el/AClass;

    invoke-static {p1}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->classDescToName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscenelib/annotations/el/AClass;->lookup(Ljava/lang/String;)Lscenelib/annotations/Annotation;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->overwrite:Z

    if-eqz v0, :cond_0

    .line 224
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/commons/EmptyVisitor;

    invoke-direct {v0}, Lorg/checkerframework/org/objectweb/asmx/commons/EmptyVisitor;-><init>()V

    return-object v0

    .line 226
    :cond_0
    new-instance v0, Lscenelib/annotations/io/classfile/SafeTypeAnnotationVisitor;

    .line 227
    invoke-super {p0, p1, p2, p3}, Lorg/checkerframework/org/objectweb/asmx/ClassAdapter;->visitTypeAnnotation(Ljava/lang/String;ZZ)Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;

    move-result-object v1

    invoke-direct {v0, v1}, Lscenelib/annotations/io/classfile/SafeTypeAnnotationVisitor;-><init>(Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;)V

    .line 226
    return-object v0
.end method
