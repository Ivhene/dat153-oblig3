.class public Lorg/checkerframework/framework/stub/StubParser;
.super Ljava/lang/Object;
.source "StubParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/framework/stub/StubParser$FqName;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final LINE_SEPARATOR:Ljava/lang/String;

.field private static final warnings:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private allStubAnnotations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljavax/lang/model/element/TypeElement;",
            ">;"
        }
    .end annotation
.end field

.field private final atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

.field atypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/lang/model/element/Element;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;"
        }
    .end annotation
.end field

.field private final debugStubParser:Z

.field declAnnos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;>;"
        }
    .end annotation
.end field

.field private final elements:Ljavax/lang/model/util/Elements;

.field private final filename:Ljava/lang/String;

.field private final findVariableElementFieldCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;",
            "Ljavax/lang/model/element/VariableElement;",
            ">;"
        }
    .end annotation
.end field

.field private final findVariableElementNameCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;",
            "Ljavax/lang/model/element/VariableElement;",
            ">;"
        }
    .end annotation
.end field

.field private final fromStubFile:Ljavax/lang/model/element/AnnotationMirror;

.field private final importedConstants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final importedTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljavax/lang/model/element/TypeElement;",
            ">;"
        }
    .end annotation
.end field

.field private final isJdkAsStub:Z

.field parseState:Lorg/checkerframework/framework/stub/StubParser$FqName;

.field private final processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

.field private stubUnit:Lorg/checkerframework/com/github/javaparser/ast/StubUnit;

.field private final typeParameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;",
            ">;"
        }
    .end annotation
.end field

.field private final warnIfNotFound:Z

.field private final warnIfNotFoundIgnoresClasses:Z

.field private final warnIfStubOverwritesBytecode:Z

.field private final warnIfStubRedundantWithBytecode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 93
    nop

    .line 179
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/framework/stub/StubParser;->LINE_SEPARATOR:Ljava/lang/String;

    .line 1999
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/checkerframework/framework/stub/StubParser;->warnings:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Ljavax/annotation/processing/ProcessingEnvironment;Ljava/util/Map;Ljava/util/Map;Z)V
    .locals 3
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "atypeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .param p3, "processingEnv"    # Ljavax/annotation/processing/ProcessingEnvironment;
    .param p6, "isJdkAsStub"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeFactory;",
            "Ljavax/annotation/processing/ProcessingEnvironment;",
            "Ljava/util/Map<",
            "Ljavax/lang/model/element/Element;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;>;Z)V"
        }
    .end annotation

    .line 199
    .local p4, "atypes":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/Element;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    .local p5, "declAnnos":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/framework/stub/StubParser;->importedConstants:Ljava/util/List;

    .line 152
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/framework/stub/StubParser;->importedTypes:Ljava/util/Map;

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/framework/stub/StubParser;->typeParameters:Ljava/util/List;

    .line 1853
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/framework/stub/StubParser;->findVariableElementNameCache:Ljava/util/Map;

    .line 1897
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/framework/stub/StubParser;->findVariableElementFieldCache:Ljava/util/Map;

    .line 200
    iput-object p1, p0, Lorg/checkerframework/framework/stub/StubParser;->filename:Ljava/lang/String;

    .line 201
    iput-object p2, p0, Lorg/checkerframework/framework/stub/StubParser;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 202
    iput-object p3, p0, Lorg/checkerframework/framework/stub/StubParser;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    .line 203
    invoke-interface {p3}, Ljavax/annotation/processing/ProcessingEnvironment;->getElementUtils()Ljavax/lang/model/util/Elements;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/framework/stub/StubParser;->elements:Ljavax/lang/model/util/Elements;

    .line 205
    invoke-interface {p3}, Ljavax/annotation/processing/ProcessingEnvironment;->getOptions()Ljava/util/Map;

    move-result-object v1

    .line 206
    .local v1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "stubWarnIfNotFound"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lorg/checkerframework/framework/stub/StubParser;->warnIfNotFound:Z

    .line 207
    const-string v2, "stubWarnIfNotFoundIgnoresClasses"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lorg/checkerframework/framework/stub/StubParser;->warnIfNotFoundIgnoresClasses:Z

    .line 208
    const-string v2, "stubWarnIfOverwritesBytecode"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lorg/checkerframework/framework/stub/StubParser;->warnIfStubOverwritesBytecode:Z

    .line 209
    nop

    .line 210
    const-string v2, "stubWarnIfRedundantWithBytecode"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 211
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->shouldWarnIfStubRedundantWithBytecode()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lorg/checkerframework/framework/stub/StubParser;->warnIfStubRedundantWithBytecode:Z

    .line 212
    const-string v2, "stubDebug"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lorg/checkerframework/framework/stub/StubParser;->debugStubParser:Z

    .line 214
    const-class v2, Lorg/checkerframework/framework/qual/FromStubFile;

    invoke-static {v0, v2}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/framework/stub/StubParser;->fromStubFile:Ljavax/lang/model/element/AnnotationMirror;

    .line 216
    iput-object p4, p0, Lorg/checkerframework/framework/stub/StubParser;->atypes:Ljava/util/Map;

    .line 217
    iput-object p5, p0, Lorg/checkerframework/framework/stub/StubParser;->declAnnos:Ljava/util/Map;

    .line 218
    iput-boolean p6, p0, Lorg/checkerframework/framework/stub/StubParser;->isJdkAsStub:Z

    .line 219
    return-void
.end method

.method private addEnclosingTypesToImportedTypes(Ljavax/lang/model/element/Element;)V
    .locals 5
    .param p1, "element"    # Ljavax/lang/model/element/Element;

    .line 386
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getEnclosedElements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/Element;

    .line 387
    .local v1, "enclosedEle":Ljavax/lang/model/element/Element;
    invoke-interface {v1}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/lang/model/element/ElementKind;->isClass()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 388
    iget-object v2, p0, Lorg/checkerframework/framework/stub/StubParser;->importedTypes:Ljava/util/Map;

    .line 389
    invoke-interface {v1}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v1

    check-cast v4, Ljavax/lang/model/element/TypeElement;

    .line 388
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    .end local v1    # "enclosedEle":Ljavax/lang/model/element/Element;
    :cond_0
    goto :goto_0

    .line 392
    :cond_1
    return-void
.end method

.method private annosInPackage(Ljavax/lang/model/element/PackageElement;)Ljava/util/Map;
    .locals 1
    .param p1, "packageElement"    # Ljavax/lang/model/element/PackageElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/PackageElement;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljavax/lang/model/element/TypeElement;",
            ">;"
        }
    .end annotation

    .line 229
    nop

    .line 230
    invoke-interface {p1}, Ljavax/lang/model/element/PackageElement;->getEnclosedElements()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljavax/lang/model/util/ElementFilter;->typesIn(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 229
    invoke-direct {p0, v0}, Lorg/checkerframework/framework/stub/StubParser;->createImportedAnnotationsMap(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private annosInType(Ljavax/lang/model/element/TypeElement;)Ljava/util/Map;
    .locals 1
    .param p1, "typeElement"    # Ljavax/lang/model/element/TypeElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/TypeElement;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljavax/lang/model/element/TypeElement;",
            ">;"
        }
    .end annotation

    .line 240
    nop

    .line 241
    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getEnclosedElements()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljavax/lang/model/util/ElementFilter;->typesIn(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 240
    invoke-direct {p0, v0}, Lorg/checkerframework/framework/stub/StubParser;->createImportedAnnotationsMap(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private annotate(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/List;)V
    .locals 5
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;",
            ">;)V"
        }
    .end annotation

    .line 1124
    .local p2, "annotations":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    if-nez p2, :cond_0

    .line 1125
    return-void

    .line 1127
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;

    .line 1128
    .local v1, "annotation":Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;
    iget-object v2, p0, Lorg/checkerframework/framework/stub/StubParser;->allStubAnnotations:Ljava/util/Map;

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/framework/stub/StubParser;->getAnnotation(Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;Ljava/util/Map;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    .line 1129
    .local v2, "annoMirror":Ljavax/lang/model/element/AnnotationMirror;
    if-eqz v2, :cond_1

    .line 1130
    invoke-virtual {p1, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    goto :goto_1

    .line 1132
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown annotation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/checkerframework/framework/stub/StubParser;->stubWarnNotFound(Ljava/lang/String;)V

    .line 1134
    .end local v1    # "annotation":Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;
    .end local v2    # "annoMirror":Ljavax/lang/model/element/AnnotationMirror;
    :goto_1
    goto :goto_0

    .line 1135
    :cond_2
    return-void
.end method

.method private annotate(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/com/github/javaparser/ast/type/Type;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V
    .locals 7
    .param p1, "atype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "typeDef"    # Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "Lorg/checkerframework/com/github/javaparser/ast/type/Type;",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;",
            ">;)V"
        }
    .end annotation

    .line 953
    .local p3, "declAnnos":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->ARRAY:Ljavax/lang/model/type/TypeKind;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 954
    instance-of v0, p2, Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;

    if-eqz v0, :cond_0

    .line 955
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;

    move-object v1, p2

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;

    invoke-direct {p0, v0, v1, p3}, Lorg/checkerframework/framework/stub/StubParser;->annotateAsArray(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    goto :goto_0

    .line 957
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expected ReferenceType but found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lorg/checkerframework/framework/stub/StubParser;->stubWarn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 959
    :goto_0
    return-void

    .line 962
    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/framework/stub/StubParser;->clearAnnotations(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/com/github/javaparser/ast/type/Type;)V

    .line 968
    invoke-virtual {p2}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p3, :cond_2

    .line 969
    move-object v0, p3

    .local v0, "primaryAnnotations":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    goto :goto_1

    .line 971
    .end local v0    # "primaryAnnotations":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    :cond_2
    invoke-virtual {p2}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    .line 974
    .restart local v0    # "primaryAnnotations":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    :goto_1
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    sget-object v3, Ljavax/lang/model/type/TypeKind;->WILDCARD:Ljavax/lang/model/type/TypeKind;

    if-eq v1, v3, :cond_3

    .line 977
    invoke-direct {p0, p1, v0}, Lorg/checkerframework/framework/stub/StubParser;->annotate(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/List;)V

    .line 979
    :cond_3
    sget-object v1, Lorg/checkerframework/framework/stub/StubParser$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v3

    aget v1, v1, v3

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_4

    .line 1043
    :pswitch_0
    move-object v1, p1

    check-cast v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    .line 1044
    .local v1, "typeVarUse":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    iget-object v2, p0, Lorg/checkerframework/framework/stub/StubParser;->typeParameters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    .line 1045
    .local v3, "typePar":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    invoke-virtual {v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUnderlyingType()Ljavax/lang/model/type/TypeVariable;

    move-result-object v4

    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v5

    if-ne v4, v5, :cond_4

    .line 1046
    nop

    .line 1047
    invoke-virtual {v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v4

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v5

    .line 1046
    invoke-static {v4, v5}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeMerger;->merge(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 1048
    nop

    .line 1049
    invoke-virtual {v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getLowerBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v4

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getLowerBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v5

    .line 1048
    invoke-static {v4, v5}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeMerger;->merge(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 1051
    .end local v3    # "typePar":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    :cond_4
    goto :goto_2

    .line 1052
    :cond_5
    goto/16 :goto_4

    .line 1008
    .end local v1    # "typeVarUse":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    :pswitch_1
    move-object v1, p1

    check-cast v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;

    .line 1010
    .local v1, "wildcardType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    invoke-virtual {p2}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->isWildcardType()Z

    move-result v4

    if-nez v4, :cond_6

    .line 1013
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wildcard type <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> doesn\'t match type in stubs file: <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lorg/checkerframework/framework/stub/StubParser;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "In file "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lorg/checkerframework/framework/stub/StubParser;->filename:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "While parsing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/checkerframework/framework/stub/StubParser;->parseState:Lorg/checkerframework/framework/stub/StubParser$FqName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v3, v2}, Lorg/checkerframework/framework/stub/StubParser;->stubWarn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1025
    return-void

    .line 1027
    :cond_6
    move-object v2, p2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;

    .line 1028
    .local v2, "wildcardDef":Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;
    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;->getExtendedType()Ljava/util/Optional;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Optional;->isPresent()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1029
    nop

    .line 1030
    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getExtendsBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v4

    .line 1031
    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;->getExtendedType()Ljava/util/Optional;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    .line 1029
    invoke-direct {p0, v4, v5, v3}, Lorg/checkerframework/framework/stub/StubParser;->annotate(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/com/github/javaparser/ast/type/Type;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 1033
    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getSuperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lorg/checkerframework/framework/stub/StubParser;->annotate(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/List;)V

    goto/16 :goto_4

    .line 1034
    :cond_7
    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;->getSuperType()Ljava/util/Optional;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Optional;->isPresent()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1035
    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getSuperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v4

    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;->getSuperType()Ljava/util/Optional;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    invoke-direct {p0, v4, v5, v3}, Lorg/checkerframework/framework/stub/StubParser;->annotate(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/com/github/javaparser/ast/type/Type;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 1036
    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getExtendsBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lorg/checkerframework/framework/stub/StubParser;->annotate(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/List;)V

    goto/16 :goto_4

    .line 1038
    :cond_8
    invoke-direct {p0, p1, v0}, Lorg/checkerframework/framework/stub/StubParser;->annotate(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/List;)V

    .line 1040
    goto/16 :goto_4

    .line 981
    .end local v1    # "wildcardType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .end local v2    # "wildcardDef":Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;
    :pswitch_2
    invoke-direct {p0, p2}, Lorg/checkerframework/framework/stub/StubParser;->unwrapDeclaredType(Lorg/checkerframework/com/github/javaparser/ast/type/Type;)Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;

    move-result-object v1

    .line 982
    .local v1, "declType":Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;
    if-nez v1, :cond_9

    .line 983
    goto/16 :goto_4

    .line 985
    :cond_9
    move-object v4, p1

    check-cast v4, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 986
    .local v4, "adeclType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;->getTypeArguments()Ljava/util/Optional;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Optional;->isPresent()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 987
    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;->getTypeArguments()Ljava/util/Optional;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v5}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_b

    .line 988
    invoke-virtual {v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_b

    .line 989
    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;->getTypeArguments()Ljava/util/Optional;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v5}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->size()I

    move-result v5

    .line 990
    invoke-virtual {v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-eq v5, v6, :cond_a

    .line 991
    nop

    .line 995
    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;->getTypeArguments()Ljava/util/Optional;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v5}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 997
    invoke-virtual {v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v1, v5, v4, v6}, [Ljava/lang/Object;

    move-result-object v5

    .line 992
    const-string v6, "Mismatch in type argument size between %s (%d) and %s (%d)"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v2, v2, [Ljava/lang/Object;

    .line 991
    invoke-direct {p0, v5, v2}, Lorg/checkerframework/framework/stub/StubParser;->stubWarn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 999
    :cond_a
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;->getTypeArguments()Ljava/util/Optional;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v5}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->size()I

    move-result v5

    if-ge v2, v5, :cond_b

    .line 1000
    nop

    .line 1001
    invoke-virtual {v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 1002
    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;->getTypeArguments()Ljava/util/Optional;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v6, v2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->get(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v6

    check-cast v6, Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    .line 1000
    invoke-direct {p0, v5, v6, v3}, Lorg/checkerframework/framework/stub/StubParser;->annotate(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/com/github/javaparser/ast/type/Type;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 999
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1056
    .end local v1    # "declType":Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;
    .end local v2    # "i":I
    .end local v4    # "adeclType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    :cond_b
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private annotateAsArray(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V
    .locals 7
    .param p1, "atype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    .param p2, "type"    # Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;",
            "Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;",
            ">;)V"
        }
    .end annotation

    .line 908
    .local p3, "declAnnos":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    invoke-direct {p0, p1, p3}, Lorg/checkerframework/framework/stub/StubParser;->annotateInnermostComponentType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Ljava/util/List;)V

    .line 909
    move-object v0, p2

    .line 910
    .local v0, "typeDef":Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    move-object v1, p1

    .line 911
    .local v1, "currentAtype":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :goto_0
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->isArrayType()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v2

    sget-object v3, Ljavax/lang/model/type/TypeKind;->ARRAY:Ljavax/lang/model/type/TypeKind;

    if-ne v2, v3, :cond_3

    .line 913
    invoke-direct {p0, v1, v0}, Lorg/checkerframework/framework/stub/StubParser;->clearAnnotations(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/com/github/javaparser/ast/type/Type;)V

    .line 915
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    .line 916
    .local v2, "annotations":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    if-eqz v2, :cond_0

    .line 917
    invoke-direct {p0, v1, v2}, Lorg/checkerframework/framework/stub/StubParser;->annotate(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/List;)V

    .line 919
    :cond_0
    move-object v3, v0

    check-cast v3, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;

    invoke-virtual {v3}, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;->getComponentType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v0

    .line 920
    move-object v3, v1

    check-cast v3, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;

    invoke-virtual {v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->getComponentType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .line 921
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->isArrayType()Z

    move-result v3

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v4

    sget-object v5, Ljavax/lang/model/type/TypeKind;->ARRAY:Ljavax/lang/model/type/TypeKind;

    const/4 v6, 0x0

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    move v4, v6

    :goto_1
    xor-int/2addr v3, v4

    if-eqz v3, :cond_2

    .line 922
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Mismatched array lengths; atype: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%n  type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-direct {p0, v3, v4}, Lorg/checkerframework/framework/stub/StubParser;->stubWarn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 924
    .end local v2    # "annotations":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    :cond_2
    goto :goto_0

    .line 925
    :cond_3
    return-void
.end method

.method private annotateInnermostComponentType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Ljava/util/List;)V
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;",
            ">;)V"
        }
    .end annotation

    .line 1116
    .local p2, "annotations":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    invoke-direct {p0, p1}, Lorg/checkerframework/framework/stub/StubParser;->innermostComponentType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/framework/stub/StubParser;->annotate(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/List;)V

    .line 1117
    return-void
.end method

.method private annotateSupertypes(Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;)V
    .locals 9
    .param p1, "typeDecl"    # Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 708
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getExtendedTypes()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "Stub file does not match bytecode"

    const-string v3, " from type "

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 709
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getExtendedTypes()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;

    .line 710
    .local v5, "superType":Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->directSuperTypes()Ljava/util/List;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lorg/checkerframework/framework/stub/StubParser;->findType(Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;Ljava/util/List;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v6

    .line 711
    .local v6, "foundType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    if-nez v6, :cond_0

    .line 712
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "could not find superclass "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lorg/checkerframework/framework/stub/StubParser;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v1, [Ljava/lang/Object;

    invoke-direct {p0, v7, v8}, Lorg/checkerframework/framework/stub/StubParser;->stubWarn(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 720
    :cond_0
    invoke-direct {p0, v6, v5, v4}, Lorg/checkerframework/framework/stub/StubParser;->annotate(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/com/github/javaparser/ast/type/Type;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 722
    .end local v5    # "superType":Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;
    .end local v6    # "foundType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    :goto_1
    goto :goto_0

    .line 724
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getImplementedTypes()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 725
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getImplementedTypes()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;

    .line 726
    .restart local v5    # "superType":Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->directSuperTypes()Ljava/util/List;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lorg/checkerframework/framework/stub/StubParser;->findType(Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;Ljava/util/List;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v6

    .line 727
    .restart local v6    # "foundType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    if-nez v6, :cond_2

    .line 728
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "could not find superinterface "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lorg/checkerframework/framework/stub/StubParser;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v1, [Ljava/lang/Object;

    invoke-direct {p0, v7, v8}, Lorg/checkerframework/framework/stub/StubParser;->stubWarn(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 736
    :cond_2
    invoke-direct {p0, v6, v5, v4}, Lorg/checkerframework/framework/stub/StubParser;->annotate(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/com/github/javaparser/ast/type/Type;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 738
    .end local v5    # "superType":Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;
    .end local v6    # "foundType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    :goto_3
    goto :goto_2

    .line 740
    :cond_3
    return-void
.end method

.method private annotateTypeParameters(Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;Ljava/lang/Object;Ljava/util/Map;Ljava/util/List;Ljava/util/List;)V
    .locals 10
    .param p2, "elt"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljavax/lang/model/element/Element;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;",
            ">;)V"
        }
    .end annotation

    .line 1185
    .local p1, "decl":Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration<*>;"
    .local p3, "atypes":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/Element;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    .local p4, "typeArguments":Ljava/util/List;, "Ljava/util/List<+Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    .local p5, "typeParameters":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;>;"
    if-nez p5, :cond_0

    .line 1186
    return-void

    .line 1189
    :cond_0
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    .line 1190
    nop

    .line 1193
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1195
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1197
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/framework/stub/StubParser;->LINE_SEPARATOR:Ljava/lang/String;

    const-string v4, " "

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 1198
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 1199
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    move-object v4, p5

    move-object v6, p4

    filled-new-array/range {v3 .. v9}, [Ljava/lang/Object;

    move-result-object v0

    .line 1191
    const-string v1, "annotateTypeParameters: mismatched sizes:  typeParameters (size %d)=%s;  typeArguments (size %d)=%s;  decl=%s;  elt=%s (%s)."

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1200
    .local v0, "msg":Ljava/lang/String;
    iget-boolean v1, p0, Lorg/checkerframework/framework/stub/StubParser;->debugStubParser:Z

    if-nez v1, :cond_1

    .line 1201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "%n  For more details, run with -AstubDebug"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1203
    :cond_1
    new-array v1, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lorg/checkerframework/framework/stub/StubParser;->stubWarn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1204
    return-void

    .line 1206
    .end local v0    # "msg":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 1207
    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;

    .line 1208
    .local v1, "param":Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;
    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    .line 1210
    .local v3, "paramType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;->getTypeBound()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;->getTypeBound()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v4

    invoke-virtual {v4}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    .line 1213
    :cond_3
    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;->getTypeBound()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;->getTypeBound()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v4

    invoke-virtual {v4}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 1214
    invoke-virtual {v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getLowerBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v4

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lorg/checkerframework/framework/stub/StubParser;->annotate(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/List;)V

    .line 1215
    invoke-virtual {v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v4

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;->getTypeBound()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v5

    invoke-virtual {v5, v2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->get(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    const/4 v6, 0x0

    invoke-direct {p0, v4, v5, v6}, Lorg/checkerframework/framework/stub/StubParser;->annotate(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/com/github/javaparser/ast/type/Type;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 1216
    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;->getTypeBound()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v4

    invoke-virtual {v4}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_5

    .line 1218
    const-string v4, "Annotations on intersection types are not yet supported"

    invoke-direct {p0, v4}, Lorg/checkerframework/framework/stub/StubParser;->stubWarnNotFound(Ljava/lang/String;)V

    goto :goto_2

    .line 1212
    :cond_4
    :goto_1
    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lorg/checkerframework/framework/stub/StubParser;->annotate(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/List;)V

    .line 1221
    :cond_5
    :goto_2
    invoke-virtual {v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUnderlyingType()Ljavax/lang/model/type/TypeVariable;

    move-result-object v4

    invoke-interface {v4}, Ljavax/lang/model/type/TypeVariable;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v4

    invoke-direct {p0, p3, v4, v3}, Lorg/checkerframework/framework/stub/StubParser;->putNew(Ljava/util/Map;Ljavax/lang/model/element/Element;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 1206
    .end local v1    # "param":Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;
    .end local v3    # "paramType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1223
    .end local v0    # "i":I
    :cond_6
    return-void
.end method

.method private builderAddElement(Lorg/checkerframework/javacutil/AnnotationBuilder;Ljava/lang/String;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Z
    .locals 8
    .param p1, "builder"    # Lorg/checkerframework/javacutil/AnnotationBuilder;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "expr"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    .line 1767
    invoke-virtual {p1, p2}, Lorg/checkerframework/javacutil/AnnotationBuilder;->findElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v0

    .line 1768
    .local v0, "var":Ljavax/lang/model/element/ExecutableElement;
    invoke-interface {v0}, Ljavax/lang/model/element/ExecutableElement;->getReturnType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    .line 1770
    .local v1, "expected":Ljavax/lang/model/type/TypeMirror;
    invoke-interface {v1}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v2

    sget-object v3, Ljavax/lang/model/type/TypeKind;->ARRAY:Ljavax/lang/model/type/TypeKind;

    if-ne v2, v3, :cond_0

    .line 1771
    move-object v2, v1

    check-cast v2, Ljavax/lang/model/type/ArrayType;

    invoke-interface {v2}, Ljavax/lang/model/type/ArrayType;->getComponentType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    invoke-interface {v2}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v2

    .local v2, "valueKind":Ljavax/lang/model/type/TypeKind;
    goto :goto_0

    .line 1773
    .end local v2    # "valueKind":Ljavax/lang/model/type/TypeKind;
    :cond_0
    invoke-interface {v1}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v2

    .line 1775
    .restart local v2    # "valueKind":Ljavax/lang/model/type/TypeKind;
    :goto_0
    instance-of v3, p3, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    .line 1776
    invoke-interface {v1}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v3

    sget-object v5, Ljavax/lang/model/type/TypeKind;->ARRAY:Ljavax/lang/model/type/TypeKind;

    if-eq v3, v5, :cond_1

    .line 1777
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unhandled annotation attribute type: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " and expected: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v5, v4, [Ljava/lang/Object;

    invoke-direct {p0, v3, v5}, Lorg/checkerframework/framework/stub/StubParser;->stubWarn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1782
    return v4

    .line 1785
    :cond_1
    move-object v3, p3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;

    invoke-virtual {v3}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;->getValues()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    .line 1786
    .local v3, "arrayExpressions":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/Object;

    .line 1788
    .local v5, "values":[Ljava/lang/Object;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 1789
    nop

    .line 1790
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    invoke-direct {p0, p2, v7, v2}, Lorg/checkerframework/framework/stub/StubParser;->getValueOfExpressionInAnnotation(Ljava/lang/String;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Ljavax/lang/model/type/TypeKind;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    .line 1791
    aget-object v7, v5, v6

    if-nez v7, :cond_2

    .line 1792
    return v4

    .line 1788
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1795
    .end local v6    # "i":I
    :cond_3
    invoke-virtual {p1, p2, v5}, Lorg/checkerframework/javacutil/AnnotationBuilder;->setValue(Ljava/lang/CharSequence;[Ljava/lang/Object;)Lorg/checkerframework/javacutil/AnnotationBuilder;

    .line 1796
    .end local v3    # "arrayExpressions":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;>;"
    .end local v5    # "values":[Ljava/lang/Object;
    goto :goto_2

    .line 1797
    :cond_4
    invoke-direct {p0, p2, p3, v2}, Lorg/checkerframework/framework/stub/StubParser;->getValueOfExpressionInAnnotation(Ljava/lang/String;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Ljavax/lang/model/type/TypeKind;)Ljava/lang/Object;

    move-result-object v3

    .line 1798
    .local v3, "value":Ljava/lang/Object;
    if-nez v3, :cond_5

    .line 1799
    return v4

    .line 1801
    :cond_5
    invoke-interface {v1}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v4

    sget-object v5, Ljavax/lang/model/type/TypeKind;->ARRAY:Ljavax/lang/model/type/TypeKind;

    if-ne v4, v5, :cond_6

    .line 1802
    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v4

    .line 1803
    .local v4, "valueArray":[Ljava/lang/Object;
    invoke-virtual {p1, p2, v4}, Lorg/checkerframework/javacutil/AnnotationBuilder;->setValue(Ljava/lang/CharSequence;[Ljava/lang/Object;)Lorg/checkerframework/javacutil/AnnotationBuilder;

    .line 1804
    .end local v4    # "valueArray":[Ljava/lang/Object;
    goto :goto_2

    .line 1805
    :cond_6
    invoke-direct {p0, p1, p2, v3}, Lorg/checkerframework/framework/stub/StubParser;->builderSetValue(Lorg/checkerframework/javacutil/AnnotationBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1808
    .end local v3    # "value":Ljava/lang/Object;
    :goto_2
    const/4 v3, 0x1

    return v3
.end method

.method private builderSetValue(Lorg/checkerframework/javacutil/AnnotationBuilder;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "builder"    # Lorg/checkerframework/javacutil/AnnotationBuilder;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .line 1820
    instance-of v0, p3, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 1821
    move-object v0, p3

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {p1, p2, v0}, Lorg/checkerframework/javacutil/AnnotationBuilder;->setValue(Ljava/lang/CharSequence;Ljava/lang/Boolean;)Lorg/checkerframework/javacutil/AnnotationBuilder;

    goto/16 :goto_0

    .line 1822
    :cond_0
    instance-of v0, p3, Ljava/lang/Character;

    if-eqz v0, :cond_1

    .line 1823
    move-object v0, p3

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {p1, p2, v0}, Lorg/checkerframework/javacutil/AnnotationBuilder;->setValue(Ljava/lang/CharSequence;Ljava/lang/Character;)Lorg/checkerframework/javacutil/AnnotationBuilder;

    goto/16 :goto_0

    .line 1824
    :cond_1
    instance-of v0, p3, Ljava/lang/Class;

    if-eqz v0, :cond_2

    .line 1825
    move-object v0, p3

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {p1, p2, v0}, Lorg/checkerframework/javacutil/AnnotationBuilder;->setValue(Ljava/lang/CharSequence;Ljava/lang/Class;)Lorg/checkerframework/javacutil/AnnotationBuilder;

    goto :goto_0

    .line 1826
    :cond_2
    instance-of v0, p3, Ljava/lang/Double;

    if-eqz v0, :cond_3

    .line 1827
    move-object v0, p3

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {p1, p2, v0}, Lorg/checkerframework/javacutil/AnnotationBuilder;->setValue(Ljava/lang/CharSequence;Ljava/lang/Double;)Lorg/checkerframework/javacutil/AnnotationBuilder;

    goto :goto_0

    .line 1828
    :cond_3
    instance-of v0, p3, Ljava/lang/Enum;

    if-eqz v0, :cond_4

    .line 1829
    move-object v0, p3

    check-cast v0, Ljava/lang/Enum;

    invoke-virtual {p1, p2, v0}, Lorg/checkerframework/javacutil/AnnotationBuilder;->setValue(Ljava/lang/CharSequence;Ljava/lang/Enum;)Lorg/checkerframework/javacutil/AnnotationBuilder;

    goto :goto_0

    .line 1830
    :cond_4
    instance-of v0, p3, Ljava/lang/Float;

    if-eqz v0, :cond_5

    .line 1831
    move-object v0, p3

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {p1, p2, v0}, Lorg/checkerframework/javacutil/AnnotationBuilder;->setValue(Ljava/lang/CharSequence;Ljava/lang/Float;)Lorg/checkerframework/javacutil/AnnotationBuilder;

    goto :goto_0

    .line 1832
    :cond_5
    instance-of v0, p3, Ljava/lang/Integer;

    if-eqz v0, :cond_6

    .line 1833
    move-object v0, p3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {p1, p2, v0}, Lorg/checkerframework/javacutil/AnnotationBuilder;->setValue(Ljava/lang/CharSequence;Ljava/lang/Integer;)Lorg/checkerframework/javacutil/AnnotationBuilder;

    goto :goto_0

    .line 1834
    :cond_6
    instance-of v0, p3, Ljava/lang/Long;

    if-eqz v0, :cond_7

    .line 1835
    move-object v0, p3

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {p1, p2, v0}, Lorg/checkerframework/javacutil/AnnotationBuilder;->setValue(Ljava/lang/CharSequence;Ljava/lang/Long;)Lorg/checkerframework/javacutil/AnnotationBuilder;

    goto :goto_0

    .line 1836
    :cond_7
    instance-of v0, p3, Ljava/lang/Short;

    if-eqz v0, :cond_8

    .line 1837
    move-object v0, p3

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {p1, p2, v0}, Lorg/checkerframework/javacutil/AnnotationBuilder;->setValue(Ljava/lang/CharSequence;Ljava/lang/Short;)Lorg/checkerframework/javacutil/AnnotationBuilder;

    goto :goto_0

    .line 1838
    :cond_8
    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 1839
    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lorg/checkerframework/javacutil/AnnotationBuilder;->setValue(Ljava/lang/CharSequence;Ljava/lang/String;)Lorg/checkerframework/javacutil/AnnotationBuilder;

    goto :goto_0

    .line 1840
    :cond_9
    instance-of v0, p3, Ljavax/lang/model/type/TypeMirror;

    if-eqz v0, :cond_a

    .line 1841
    move-object v0, p3

    check-cast v0, Ljavax/lang/model/type/TypeMirror;

    invoke-virtual {p1, p2, v0}, Lorg/checkerframework/javacutil/AnnotationBuilder;->setValue(Ljava/lang/CharSequence;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/javacutil/AnnotationBuilder;

    goto :goto_0

    .line 1842
    :cond_a
    instance-of v0, p3, Ljavax/lang/model/element/VariableElement;

    if-eqz v0, :cond_b

    .line 1843
    move-object v0, p3

    check-cast v0, Ljavax/lang/model/element/VariableElement;

    invoke-virtual {p1, p2, v0}, Lorg/checkerframework/javacutil/AnnotationBuilder;->setValue(Ljava/lang/CharSequence;Ljavax/lang/model/element/VariableElement;)Lorg/checkerframework/javacutil/AnnotationBuilder;

    .line 1847
    :goto_0
    return-void

    .line 1845
    :cond_b
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    const-string v1, "Unexpected builder value: %s"

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method private clearAnnotations(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/com/github/javaparser/ast/type/Type;)V
    .locals 2
    .param p1, "atype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "typeDef"    # Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    .line 877
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v0

    .line 880
    .local v0, "annos":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 893
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->clearAnnotations()V

    .line 895
    :cond_0
    return-void
.end method

.method private convert(Ljava/lang/Number;Ljavax/lang/model/type/TypeKind;)Ljava/lang/Object;
    .locals 1
    .param p1, "number"    # Ljava/lang/Number;
    .param p2, "expectedKind"    # Ljavax/lang/model/type/TypeKind;

    .line 1716
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/checkerframework/framework/stub/StubParser;->convert(Ljava/lang/Number;Ljavax/lang/model/type/TypeKind;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private convert(Ljava/lang/Number;Ljavax/lang/model/type/TypeKind;Z)Ljava/lang/Object;
    .locals 5
    .param p1, "number"    # Ljava/lang/Number;
    .param p2, "expectedKind"    # Ljavax/lang/model/type/TypeKind;
    .param p3, "negate"    # Z

    .line 1729
    if-eqz p3, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    .line 1730
    .local v0, "scalefactor":B
    sget-object v1, Lorg/checkerframework/framework/stub/StubParser$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    invoke-virtual {p2}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1754
    new-instance v1, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected expectedKind: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1752
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    int-to-double v3, v0

    mul-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    return-object v1

    .line 1750
    :pswitch_1
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    int-to-float v2, v0

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    return-object v1

    .line 1742
    :pswitch_2
    if-nez p3, :cond_1

    .line 1748
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v1

    int-to-char v1, v1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    return-object v1

    .line 1743
    :cond_1
    new-instance v1, Lorg/checkerframework/javacutil/BugInCF;

    .line 1746
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {p1, p2, v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 1744
    const-string v3, "convert(%s, %s, %s): can\'t negate a char"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1738
    :pswitch_3
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    int-to-long v3, v0

    mul-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 1736
    :pswitch_4
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v1

    mul-int/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 1734
    :pswitch_5
    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result v1

    mul-int/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 1732
    :pswitch_6
    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result v1

    mul-int/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private createImportedAnnotationsMap(Ljava/util/List;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljavax/lang/model/element/TypeElement;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljavax/lang/model/element/TypeElement;",
            ">;"
        }
    .end annotation

    .line 251
    .local p1, "typeElements":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/element/TypeElement;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 252
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljavax/lang/model/element/TypeElement;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/TypeElement;

    .line 253
    .local v2, "typeElm":Ljavax/lang/model/element/TypeElement;
    invoke-interface {v2}, Ljavax/lang/model/element/TypeElement;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v3

    sget-object v4, Ljavax/lang/model/element/ElementKind;->ANNOTATION_TYPE:Ljavax/lang/model/element/ElementKind;

    if-ne v3, v4, :cond_0

    .line 254
    invoke-interface {v2}, Ljavax/lang/model/element/TypeElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Lorg/checkerframework/framework/stub/StubParser;->putNoOverride(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 256
    .end local v2    # "typeElm":Ljavax/lang/model/element/TypeElement;
    :cond_0
    goto :goto_0

    .line 257
    :cond_1
    return-object v0
.end method

.method private findElement(Ljavax/lang/model/element/TypeElement;Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;)Ljavax/lang/model/element/Element;
    .locals 5
    .param p1, "typeElt"    # Ljavax/lang/model/element/TypeElement;
    .param p2, "ciDecl"    # Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    .line 1331
    invoke-virtual {p2}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getNameAsString()Ljava/lang/String;

    move-result-object v0

    .line 1332
    .local v0, "wantedClassOrInterfaceName":Ljava/lang/String;
    invoke-static {p1}, Lorg/checkerframework/javacutil/ElementUtils;->getAllTypeElementsIn(Ljavax/lang/model/element/TypeElement;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/TypeElement;

    .line 1333
    .local v2, "typeElement":Ljavax/lang/model/element/TypeElement;
    invoke-interface {v2}, Ljavax/lang/model/element/TypeElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1334
    return-object v2

    .line 1336
    .end local v2    # "typeElement":Ljavax/lang/model/element/TypeElement;
    :cond_0
    goto :goto_0

    .line 1338
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Class/interface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found in type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/checkerframework/framework/stub/StubParser;->stubWarnNotFound(Ljava/lang/String;)V

    .line 1340
    iget-boolean v1, p0, Lorg/checkerframework/framework/stub/StubParser;->debugStubParser:Z

    if-eqz v1, :cond_2

    .line 1341
    const-string v1, "  Here are the type declarations of %s:"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/checkerframework/framework/stub/StubParser;->stubDebug(Ljava/lang/String;)V

    .line 1342
    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getEnclosedElements()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljavax/lang/model/util/ElementFilter;->typesIn(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/TypeElement;

    .line 1343
    .local v2, "method":Ljavax/lang/model/element/TypeElement;
    const-string v3, "    %s"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/checkerframework/framework/stub/StubParser;->stubDebug(Ljava/lang/String;)V

    .line 1344
    .end local v2    # "method":Ljavax/lang/model/element/TypeElement;
    goto :goto_1

    .line 1346
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method private findElement(Ljavax/lang/model/element/TypeElement;Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;)Ljavax/lang/model/element/Element;
    .locals 5
    .param p1, "typeElt"    # Ljavax/lang/model/element/TypeElement;
    .param p2, "enumDecl"    # Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;

    .line 1360
    invoke-virtual {p2}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;->getNameAsString()Ljava/lang/String;

    move-result-object v0

    .line 1361
    .local v0, "wantedEnumName":Ljava/lang/String;
    invoke-static {p1}, Lorg/checkerframework/javacutil/ElementUtils;->getAllTypeElementsIn(Ljavax/lang/model/element/TypeElement;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/TypeElement;

    .line 1362
    .local v2, "typeElement":Ljavax/lang/model/element/TypeElement;
    invoke-interface {v2}, Ljavax/lang/model/element/TypeElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1363
    return-object v2

    .line 1365
    .end local v2    # "typeElement":Ljavax/lang/model/element/TypeElement;
    :cond_0
    goto :goto_0

    .line 1367
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enum "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found in type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/checkerframework/framework/stub/StubParser;->stubWarnNotFound(Ljava/lang/String;)V

    .line 1368
    iget-boolean v1, p0, Lorg/checkerframework/framework/stub/StubParser;->debugStubParser:Z

    if-eqz v1, :cond_2

    .line 1369
    const-string v1, "  Here are the type declarations of %s:"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/checkerframework/framework/stub/StubParser;->stubDebug(Ljava/lang/String;)V

    .line 1370
    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getEnclosedElements()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljavax/lang/model/util/ElementFilter;->typesIn(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/TypeElement;

    .line 1371
    .local v2, "method":Ljavax/lang/model/element/TypeElement;
    const-string v3, "    %s"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/checkerframework/framework/stub/StubParser;->stubDebug(Ljava/lang/String;)V

    .line 1372
    .end local v2    # "method":Ljavax/lang/model/element/TypeElement;
    goto :goto_1

    .line 1374
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method private findElement(Ljavax/lang/model/element/TypeElement;Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;)Ljavax/lang/model/element/ExecutableElement;
    .locals 7
    .param p1, "typeElt"    # Ljavax/lang/model/element/TypeElement;
    .param p2, "constructorDecl"    # Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;

    .line 1444
    iget-boolean v0, p0, Lorg/checkerframework/framework/stub/StubParser;->isJdkAsStub:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;->getModifiers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/ast/Modifier;->privateModifier()Lorg/checkerframework/com/github/javaparser/ast/Modifier;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->contains(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1447
    return-object v1

    .line 1450
    :cond_0
    invoke-virtual {p2}, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;->getParameters()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1451
    const/4 v0, 0x0

    goto :goto_0

    .line 1452
    :cond_1
    invoke-virtual {p2}, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;->getParameters()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->size()I

    move-result v0

    :goto_0
    nop

    .line 1453
    .local v0, "wantedMethodParams":I
    invoke-static {p2}, Lorg/checkerframework/framework/stub/StubUtil;->toString(Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;)Ljava/lang/String;

    move-result-object v2

    .line 1455
    .local v2, "wantedMethodString":Ljava/lang/String;
    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getEnclosedElements()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Ljavax/lang/model/util/ElementFilter;->constructorsIn(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/lang/model/element/ExecutableElement;

    .line 1457
    .local v4, "method":Ljavax/lang/model/element/ExecutableElement;
    invoke-interface {v4}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v0, v5, :cond_2

    .line 1458
    invoke-static {v4}, Lorg/checkerframework/javacutil/ElementUtils;->getSimpleName(Ljavax/lang/model/element/ExecutableElement;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1459
    return-object v4

    .line 1461
    .end local v4    # "method":Ljavax/lang/model/element/ExecutableElement;
    :cond_2
    goto :goto_1

    .line 1463
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Constructor "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not found in type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/checkerframework/framework/stub/StubParser;->stubWarnNotFound(Ljava/lang/String;)V

    .line 1464
    iget-boolean v3, p0, Lorg/checkerframework/framework/stub/StubParser;->debugStubParser:Z

    if-eqz v3, :cond_4

    .line 1466
    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getEnclosedElements()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Ljavax/lang/model/util/ElementFilter;->constructorsIn(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/lang/model/element/ExecutableElement;

    .line 1467
    .restart local v4    # "method":Ljavax/lang/model/element/ExecutableElement;
    const-string v5, "  %s"

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/checkerframework/framework/stub/StubParser;->stubDebug(Ljava/lang/String;)V

    .line 1468
    .end local v4    # "method":Ljavax/lang/model/element/ExecutableElement;
    goto :goto_2

    .line 1470
    :cond_4
    return-object v1
.end method

.method private findElement(Ljavax/lang/model/element/TypeElement;Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;)Ljavax/lang/model/element/ExecutableElement;
    .locals 8
    .param p1, "typeElt"    # Ljavax/lang/model/element/TypeElement;
    .param p2, "methodDecl"    # Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;

    .line 1403
    iget-boolean v0, p0, Lorg/checkerframework/framework/stub/StubParser;->isJdkAsStub:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getModifiers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/ast/Modifier;->privateModifier()Lorg/checkerframework/com/github/javaparser/ast/Modifier;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->contains(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1406
    return-object v1

    .line 1408
    :cond_0
    invoke-virtual {p2}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getNameAsString()Ljava/lang/String;

    move-result-object v0

    .line 1410
    .local v0, "wantedMethodName":Ljava/lang/String;
    invoke-virtual {p2}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getParameters()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getParameters()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->size()I

    move-result v2

    .line 1411
    .local v2, "wantedMethodParams":I
    :goto_0
    invoke-static {p2}, Lorg/checkerframework/framework/stub/StubUtil;->toString(Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;)Ljava/lang/String;

    move-result-object v3

    .line 1412
    .local v3, "wantedMethodString":Ljava/lang/String;
    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getEnclosedElements()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Ljavax/lang/model/util/ElementFilter;->methodsIn(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/lang/model/element/ExecutableElement;

    .line 1414
    .local v5, "method":Ljavax/lang/model/element/ExecutableElement;
    invoke-interface {v5}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ne v2, v6, :cond_2

    .line 1415
    invoke-interface {v5}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1416
    invoke-static {v5}, Lorg/checkerframework/javacutil/ElementUtils;->getSimpleName(Ljavax/lang/model/element/ExecutableElement;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1417
    return-object v5

    .line 1419
    .end local v5    # "method":Ljavax/lang/model/element/ExecutableElement;
    :cond_2
    goto :goto_1

    .line 1420
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Method "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found in type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/checkerframework/framework/stub/StubParser;->stubWarnNotFound(Ljava/lang/String;)V

    .line 1421
    iget-boolean v4, p0, Lorg/checkerframework/framework/stub/StubParser;->debugStubParser:Z

    if-eqz v4, :cond_4

    .line 1422
    const-string v4, "  Here are the methods of %s:"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/checkerframework/framework/stub/StubParser;->stubDebug(Ljava/lang/String;)V

    .line 1424
    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getEnclosedElements()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Ljavax/lang/model/util/ElementFilter;->methodsIn(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/lang/model/element/ExecutableElement;

    .line 1425
    .restart local v5    # "method":Ljavax/lang/model/element/ExecutableElement;
    const-string v6, "    %s"

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/checkerframework/framework/stub/StubParser;->stubDebug(Ljava/lang/String;)V

    .line 1426
    .end local v5    # "method":Ljavax/lang/model/element/ExecutableElement;
    goto :goto_2

    .line 1428
    :cond_4
    return-object v1
.end method

.method private findElement(Ljavax/lang/model/element/TypeElement;Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;)Ljavax/lang/model/element/VariableElement;
    .locals 2
    .param p1, "typeElt"    # Ljavax/lang/model/element/TypeElement;
    .param p2, "enumConstDecl"    # Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;

    .line 1388
    invoke-virtual {p2}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->getNameAsString()Ljava/lang/String;

    move-result-object v0

    .line 1389
    .local v0, "enumConstName":Ljava/lang/String;
    invoke-direct {p0, p1, v0}, Lorg/checkerframework/framework/stub/StubParser;->findFieldElement(Ljavax/lang/model/element/TypeElement;Ljava/lang/String;)Ljavax/lang/model/element/VariableElement;

    move-result-object v1

    return-object v1
.end method

.method private findElement(Ljavax/lang/model/element/TypeElement;Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;)Ljavax/lang/model/element/VariableElement;
    .locals 2
    .param p1, "typeElt"    # Ljavax/lang/model/element/TypeElement;
    .param p2, "variable"    # Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;

    .line 1474
    invoke-virtual {p2}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->getNameAsString()Ljava/lang/String;

    move-result-object v0

    .line 1475
    .local v0, "fieldName":Ljava/lang/String;
    invoke-direct {p0, p1, v0}, Lorg/checkerframework/framework/stub/StubParser;->findFieldElement(Ljavax/lang/model/element/TypeElement;Ljava/lang/String;)Ljavax/lang/model/element/VariableElement;

    move-result-object v1

    return-object v1
.end method

.method private findFieldElement(Ljavax/lang/model/element/TypeElement;Ljava/lang/String;)Ljavax/lang/model/element/VariableElement;
    .locals 4
    .param p1, "typeElt"    # Ljavax/lang/model/element/TypeElement;
    .param p2, "fieldName"    # Ljava/lang/String;

    .line 1487
    iget-object v0, p0, Lorg/checkerframework/framework/stub/StubParser;->elements:Ljavax/lang/model/util/Elements;

    invoke-static {p1, v0}, Lorg/checkerframework/javacutil/ElementUtils;->getAllFieldsIn(Ljavax/lang/model/element/TypeElement;Ljavax/lang/model/util/Elements;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/VariableElement;

    .line 1489
    .local v1, "field":Ljavax/lang/model/element/VariableElement;
    invoke-interface {v1}, Ljavax/lang/model/element/VariableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1490
    return-object v1

    .line 1492
    .end local v1    # "field":Ljavax/lang/model/element/VariableElement;
    :cond_0
    goto :goto_0

    .line 1494
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Field "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " not found in type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/framework/stub/StubParser;->stubWarnNotFound(Ljava/lang/String;)V

    .line 1495
    iget-boolean v0, p0, Lorg/checkerframework/framework/stub/StubParser;->debugStubParser:Z

    if-eqz v0, :cond_2

    .line 1496
    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getEnclosedElements()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljavax/lang/model/util/ElementFilter;->fieldsIn(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/VariableElement;

    .line 1497
    .restart local v1    # "field":Ljavax/lang/model/element/VariableElement;
    const-string v2, "  %s"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/checkerframework/framework/stub/StubParser;->stubDebug(Ljava/lang/String;)V

    .line 1498
    .end local v1    # "field":Ljavax/lang/model/element/VariableElement;
    goto :goto_1

    .line 1500
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private findPackage(Ljava/lang/String;)Ljavax/lang/model/element/PackageElement;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1533
    iget-object v0, p0, Lorg/checkerframework/framework/stub/StubParser;->elements:Ljavax/lang/model/util/Elements;

    invoke-interface {v0, p1}, Ljavax/lang/model/util/Elements;->getPackageElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/PackageElement;

    move-result-object v0

    .line 1534
    .local v0, "packageElement":Ljavax/lang/model/element/PackageElement;
    if-nez v0, :cond_0

    .line 1535
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Imported package not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/checkerframework/framework/stub/StubParser;->stubWarnNotFound(Ljava/lang/String;)V

    .line 1537
    :cond_0
    return-object v0
.end method

.method private findType(Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;Ljava/util/List;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .locals 5
    .param p1, "type"    # Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;",
            "Ljava/util/List<",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;",
            ">;)",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;"
        }
    .end annotation

    .line 1299
    .local p2, "types":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;->getNameAsString()Ljava/lang/String;

    move-result-object v0

    .line 1300
    .local v0, "typeString":Ljava/lang/String;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 1301
    .local v2, "superType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    nop

    .line 1302
    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getUnderlyingType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v3

    .line 1303
    invoke-interface {v3}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v3

    .line 1304
    invoke-interface {v3}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v3

    .line 1305
    invoke-interface {v3, v0}, Ljavax/lang/model/element/Name;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1306
    return-object v2

    .line 1308
    .end local v2    # "superType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    :cond_0
    goto :goto_0

    .line 1309
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Supertype "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/checkerframework/framework/stub/StubParser;->stubWarnNotFound(Ljava/lang/String;)V

    .line 1310
    iget-boolean v1, p0, Lorg/checkerframework/framework/stub/StubParser;->debugStubParser:Z

    if-eqz v1, :cond_2

    .line 1311
    const-string v1, "Supertypes that were searched:"

    invoke-direct {p0, v1}, Lorg/checkerframework/framework/stub/StubParser;->stubDebug(Ljava/lang/String;)V

    .line 1312
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 1313
    .restart local v2    # "superType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    const-string v3, "  %s"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/checkerframework/framework/stub/StubParser;->stubDebug(Ljava/lang/String;)V

    .line 1314
    .end local v2    # "superType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    goto :goto_1

    .line 1316
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method private findTypeOfName(Ljava/lang/String;)Ljavax/lang/model/element/TypeElement;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;

    .line 1681
    iget-object v0, p0, Lorg/checkerframework/framework/stub/StubParser;->parseState:Lorg/checkerframework/framework/stub/StubParser$FqName;

    iget-object v0, v0, Lorg/checkerframework/framework/stub/StubParser$FqName;->packageName:Ljava/lang/String;

    .line 1682
    .local v0, "packageName":Ljava/lang/String;
    const-string v1, "."

    if-nez v0, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1687
    .local v2, "packagePrefix":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, p1}, Lorg/checkerframework/framework/stub/StubParser;->getTypeElementOrNull(Ljava/lang/String;)Ljavax/lang/model/element/TypeElement;

    move-result-object v3

    .line 1688
    .local v3, "typeElement":Ljavax/lang/model/element/TypeElement;
    if-nez v3, :cond_1

    if-eqz v0, :cond_1

    .line 1689
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/checkerframework/framework/stub/StubParser;->getTypeElementOrNull(Ljava/lang/String;)Ljavax/lang/model/element/TypeElement;

    move-result-object v3

    .line 1691
    :cond_1
    iget-object v4, p0, Lorg/checkerframework/framework/stub/StubParser;->parseState:Lorg/checkerframework/framework/stub/StubParser$FqName;

    iget-object v4, v4, Lorg/checkerframework/framework/stub/StubParser$FqName;->className:Ljava/lang/String;

    .line 1692
    .local v4, "enclosingClass":Ljava/lang/String;
    :goto_1
    if-nez v3, :cond_3

    if-eqz v4, :cond_3

    .line 1693
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/checkerframework/framework/stub/StubParser;->getTypeElementOrNull(Ljava/lang/String;)Ljavax/lang/model/element/TypeElement;

    move-result-object v3

    .line 1694
    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    .line 1695
    .local v5, "lastDot":I
    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    .line 1696
    goto :goto_2

    .line 1698
    :cond_2
    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1700
    .end local v5    # "lastDot":I
    goto :goto_1

    .line 1701
    :cond_3
    :goto_2
    if-nez v3, :cond_4

    const-string v1, "java.lang"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1702
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "java.lang."

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/checkerframework/framework/stub/StubParser;->getTypeElementOrNull(Ljava/lang/String;)Ljavax/lang/model/element/TypeElement;

    move-result-object v3

    .line 1704
    :cond_4
    return-object v3
.end method

.method private findVariableElement(Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;)Ljavax/lang/model/element/VariableElement;
    .locals 6
    .param p1, "faexpr"    # Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;

    .line 1901
    iget-object v0, p0, Lorg/checkerframework/framework/stub/StubParser;->findVariableElementFieldCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1902
    iget-object v0, p0, Lorg/checkerframework/framework/stub/StubParser;->findVariableElementFieldCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/VariableElement;

    return-object v0

    .line 1904
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/framework/stub/StubParser;->elements:Ljavax/lang/model/util/Elements;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->getScope()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object v0

    .line 1905
    .local v0, "rcvElt":Ljavax/lang/model/element/TypeElement;
    if-nez v0, :cond_4

    .line 1907
    iget-object v1, p0, Lorg/checkerframework/framework/stub/StubParser;->importedConstants:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1909
    .local v2, "imp":Ljava/lang/String;
    const-string v3, "\\."

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1910
    .local v3, "importDelimited":[Ljava/lang/String;
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    aget-object v4, v3, v4

    .line 1911
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->getScope()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v5

    invoke-virtual {v5}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1910
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1912
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1913
    .local v1, "fullAnnotation":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_1

    .line 1914
    aget-object v5, v3, v4

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1915
    const/16 v5, 0x2e

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1913
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1917
    .end local v4    # "i":I
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->getScope()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v4

    invoke-virtual {v4}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1918
    iget-object v4, p0, Lorg/checkerframework/framework/stub/StubParser;->elements:Ljavax/lang/model/util/Elements;

    invoke-interface {v4, v1}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object v0

    .line 1919
    goto :goto_2

    .line 1921
    .end local v1    # "fullAnnotation":Ljava/lang/StringBuilder;
    .end local v2    # "imp":Ljava/lang/String;
    .end local v3    # "importDelimited":[Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 1923
    :cond_3
    :goto_2
    if-nez v0, :cond_4

    .line 1924
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->getScope()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/checkerframework/framework/stub/StubParser;->stubWarnNotFound(Ljava/lang/String;)V

    .line 1925
    const/4 v1, 0x0

    return-object v1

    .line 1929
    :cond_4
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->getNameAsString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/checkerframework/framework/stub/StubParser;->findFieldElement(Ljavax/lang/model/element/TypeElement;Ljava/lang/String;)Ljavax/lang/model/element/VariableElement;

    move-result-object v1

    .line 1930
    .local v1, "res":Ljavax/lang/model/element/VariableElement;
    iget-object v2, p0, Lorg/checkerframework/framework/stub/StubParser;->findVariableElementFieldCache:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1931
    return-object v1
.end method

.method private findVariableElement(Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;)Ljavax/lang/model/element/VariableElement;
    .locals 8
    .param p1, "nexpr"    # Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;

    .line 1856
    iget-object v0, p0, Lorg/checkerframework/framework/stub/StubParser;->findVariableElementNameCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1857
    iget-object v0, p0, Lorg/checkerframework/framework/stub/StubParser;->findVariableElementNameCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/VariableElement;

    return-object v0

    .line 1860
    :cond_0
    const/4 v0, 0x0

    .line 1861
    .local v0, "res":Ljavax/lang/model/element/VariableElement;
    const/4 v1, 0x0

    .line 1862
    .local v1, "importFound":Z
    iget-object v2, p0, Lorg/checkerframework/framework/stub/StubParser;->importedConstants:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1863
    .local v3, "imp":Ljava/lang/String;
    invoke-static {v3}, Lorg/checkerframework/framework/stub/StubUtil;->partitionQualifiedName(Ljava/lang/String;)Lorg/checkerframework/javacutil/Pair;

    move-result-object v4

    .line 1864
    .local v4, "partitionedName":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v5, v4, Lorg/checkerframework/javacutil/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 1865
    .local v5, "typeName":Ljava/lang/String;
    iget-object v6, v4, Lorg/checkerframework/javacutil/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 1866
    .local v6, "fieldName":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;->getNameAsString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1867
    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v2

    .line 1870
    const-string v7, "Enclosing type of static import %s not found"

    invoke-static {v7, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 1868
    invoke-direct {p0, v5, v2}, Lorg/checkerframework/framework/stub/StubParser;->getTypeElement(Ljava/lang/String;[Ljava/lang/String;)Ljavax/lang/model/element/TypeElement;

    move-result-object v2

    .line 1873
    .local v2, "enclType":Ljavax/lang/model/element/TypeElement;
    if-nez v2, :cond_1

    .line 1874
    const/4 v7, 0x0

    return-object v7

    .line 1876
    :cond_1
    const/4 v1, 0x1

    .line 1877
    invoke-direct {p0, v2, v6}, Lorg/checkerframework/framework/stub/StubParser;->findFieldElement(Ljavax/lang/model/element/TypeElement;Ljava/lang/String;)Ljavax/lang/model/element/VariableElement;

    move-result-object v0

    .line 1878
    goto :goto_1

    .line 1881
    .end local v2    # "enclType":Ljavax/lang/model/element/TypeElement;
    .end local v3    # "imp":Ljava/lang/String;
    .end local v4    # "partitionedName":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "typeName":Ljava/lang/String;
    .end local v6    # "fieldName":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 1885
    :cond_3
    :goto_1
    if-nez v0, :cond_4

    if-nez v1, :cond_4

    .line 1886
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Static field "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not imported"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/checkerframework/framework/stub/StubParser;->stubWarnNotFound(Ljava/lang/String;)V

    .line 1889
    :cond_4
    iget-object v2, p0, Lorg/checkerframework/framework/stub/StubParser;->findVariableElementNameCache:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1890
    return-object v0
.end method

.method private getAllStubAnnotations()Ljava/util/Map;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljavax/lang/model/element/TypeElement;",
            ">;"
        }
    .end annotation

    .line 292
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 294
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljavax/lang/model/element/TypeElement;>;"
    iget-object v1, p0, Lorg/checkerframework/framework/stub/StubParser;->stubUnit:Lorg/checkerframework/com/github/javaparser/ast/StubUnit;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/StubUnit;->getCompilationUnits()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c

    .line 295
    iget-object v1, p0, Lorg/checkerframework/framework/stub/StubParser;->stubUnit:Lorg/checkerframework/com/github/javaparser/ast/StubUnit;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/StubUnit;->getCompilationUnits()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;

    .line 297
    .local v1, "cu":Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;
    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->getImports()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    if-nez v3, :cond_0

    .line 298
    return-object v0

    .line 301
    :cond_0
    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->getImports()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-virtual {v3}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;

    .line 302
    .local v4, "importDecl":Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;
    invoke-virtual {v4}, Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;->getNameAsString()Ljava/lang/String;

    move-result-object v5

    .line 304
    .local v5, "imported":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v4}, Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;->isAsterisk()Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "Imported type not found"

    const/4 v8, 0x1

    if-eqz v6, :cond_4

    .line 305
    :try_start_1
    invoke-virtual {v4}, Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;->isStatic()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 307
    new-array v6, v8, [Ljava/lang/String;

    aput-object v7, v6, v2

    invoke-direct {p0, v5, v6}, Lorg/checkerframework/framework/stub/StubParser;->getTypeElement(Ljava/lang/String;[Ljava/lang/String;)Ljavax/lang/model/element/TypeElement;

    move-result-object v6

    .line 308
    .local v6, "element":Ljavax/lang/model/element/TypeElement;
    if-eqz v6, :cond_1

    .line 311
    invoke-direct {p0, v6}, Lorg/checkerframework/framework/stub/StubParser;->annosInType(Ljavax/lang/model/element/TypeElement;)Ljava/util/Map;

    move-result-object v7

    invoke-static {v0, v7}, Lorg/checkerframework/framework/stub/StubParser;->putAllNew(Ljava/util/Map;Ljava/util/Map;)V

    .line 312
    iget-object v7, p0, Lorg/checkerframework/framework/stub/StubParser;->importedConstants:Ljava/util/List;

    invoke-static {v6}, Lorg/checkerframework/framework/stub/StubParser;->getImportableMembers(Ljavax/lang/model/element/TypeElement;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 313
    invoke-direct {p0, v6}, Lorg/checkerframework/framework/stub/StubParser;->addEnclosingTypesToImportedTypes(Ljavax/lang/model/element/Element;)V

    .line 316
    .end local v6    # "element":Ljavax/lang/model/element/TypeElement;
    :cond_1
    goto/16 :goto_3

    .line 318
    :cond_2
    invoke-direct {p0, v5}, Lorg/checkerframework/framework/stub/StubParser;->findPackage(Ljava/lang/String;)Ljavax/lang/model/element/PackageElement;

    move-result-object v6

    .line 319
    .local v6, "element":Ljavax/lang/model/element/PackageElement;
    if-eqz v6, :cond_3

    .line 320
    invoke-direct {p0, v6}, Lorg/checkerframework/framework/stub/StubParser;->annosInPackage(Ljavax/lang/model/element/PackageElement;)Ljava/util/Map;

    move-result-object v7

    invoke-static {v0, v7}, Lorg/checkerframework/framework/stub/StubParser;->putAllNew(Ljava/util/Map;Ljava/util/Map;)V

    .line 321
    invoke-direct {p0, v6}, Lorg/checkerframework/framework/stub/StubParser;->addEnclosingTypesToImportedTypes(Ljavax/lang/model/element/Element;)V

    .line 323
    .end local v6    # "element":Ljavax/lang/model/element/PackageElement;
    :cond_3
    goto/16 :goto_3

    .line 327
    :cond_4
    iget-object v6, p0, Lorg/checkerframework/framework/stub/StubParser;->elements:Ljavax/lang/model/util/Elements;

    invoke-interface {v6, v5}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object v6

    .line 328
    .local v6, "importType":Ljavax/lang/model/element/TypeElement;
    if-nez v6, :cond_5

    invoke-virtual {v4}, Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;->isStatic()Z

    move-result v9

    if-nez v9, :cond_5

    .line 331
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Imported type not found: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lorg/checkerframework/framework/stub/StubParser;->stubWarnNotFound(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 332
    :cond_5
    if-nez v6, :cond_8

    .line 335
    invoke-static {v5}, Lorg/checkerframework/framework/stub/StubUtil;->partitionQualifiedName(Ljava/lang/String;)Lorg/checkerframework/javacutil/Pair;

    move-result-object v7

    .line 336
    .local v7, "typeParts":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v9, v7, Lorg/checkerframework/javacutil/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    .line 337
    .local v9, "type":Ljava/lang/String;
    iget-object v10, v7, Lorg/checkerframework/javacutil/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    .line 338
    .local v10, "fieldName":Ljava/lang/String;
    new-array v8, v8, [Ljava/lang/String;

    const-string v11, "Enclosing type of static field %s not found"

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v12

    .line 341
    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v2

    .line 339
    invoke-direct {p0, v9, v8}, Lorg/checkerframework/framework/stub/StubParser;->getTypeElement(Ljava/lang/String;[Ljava/lang/String;)Ljavax/lang/model/element/TypeElement;

    move-result-object v8

    .line 345
    .local v8, "enclType":Ljavax/lang/model/element/TypeElement;
    if-eqz v8, :cond_7

    .line 349
    iget-object v11, p0, Lorg/checkerframework/framework/stub/StubParser;->elements:Ljavax/lang/model/util/Elements;

    invoke-static {v8, v11}, Lorg/checkerframework/javacutil/ElementUtils;->getAllFieldsIn(Ljavax/lang/model/element/TypeElement;Ljavax/lang/model/util/Elements;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljavax/lang/model/element/VariableElement;

    .line 351
    .local v12, "field":Ljavax/lang/model/element/VariableElement;
    invoke-interface {v12}, Ljavax/lang/model/element/VariableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 352
    iget-object v13, p0, Lorg/checkerframework/framework/stub/StubParser;->importedConstants:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    .end local v12    # "field":Ljavax/lang/model/element/VariableElement;
    :cond_6
    goto :goto_1

    .line 357
    .end local v7    # "typeParts":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "enclType":Ljavax/lang/model/element/TypeElement;
    .end local v9    # "type":Ljava/lang/String;
    .end local v10    # "fieldName":Ljava/lang/String;
    :cond_7
    goto :goto_3

    :cond_8
    invoke-interface {v6}, Ljavax/lang/model/element/TypeElement;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v9

    sget-object v10, Ljavax/lang/model/element/ElementKind;->ANNOTATION_TYPE:Ljavax/lang/model/element/ElementKind;

    if-ne v9, v10, :cond_a

    .line 360
    iget-object v7, p0, Lorg/checkerframework/framework/stub/StubParser;->elements:Ljavax/lang/model/util/Elements;

    invoke-static {v7, v5}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromName(Ljavax/lang/model/util/Elements;Ljava/lang/CharSequence;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v7

    .line 361
    .local v7, "anno":Ljavax/lang/model/element/AnnotationMirror;
    if-eqz v7, :cond_9

    .line 362
    nop

    .line 363
    invoke-interface {v7}, Ljavax/lang/model/element/AnnotationMirror;->getAnnotationType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v8

    invoke-interface {v8}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v8

    check-cast v8, Ljavax/lang/model/element/TypeElement;

    .line 364
    .local v8, "annoElt":Ljavax/lang/model/element/TypeElement;
    invoke-interface {v8}, Ljavax/lang/model/element/TypeElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9, v8}, Lorg/checkerframework/framework/stub/StubParser;->putNoOverride(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 365
    iget-object v9, p0, Lorg/checkerframework/framework/stub/StubParser;->importedTypes:Ljava/util/Map;

    invoke-interface {v8}, Ljavax/lang/model/element/TypeElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    nop

    .end local v8    # "annoElt":Ljavax/lang/model/element/TypeElement;
    goto :goto_2

    .line 367
    :cond_9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not load import: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lorg/checkerframework/framework/stub/StubParser;->stubWarnNotFound(Ljava/lang/String;)V

    .line 369
    .end local v7    # "anno":Ljavax/lang/model/element/AnnotationMirror;
    :goto_2
    goto :goto_3

    .line 372
    :cond_a
    iget-object v9, p0, Lorg/checkerframework/framework/stub/StubParser;->importedConstants:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    new-array v8, v8, [Ljava/lang/String;

    aput-object v7, v8, v2

    invoke-direct {p0, v5, v8}, Lorg/checkerframework/framework/stub/StubParser;->getTypeElement(Ljava/lang/String;[Ljava/lang/String;)Ljavax/lang/model/element/TypeElement;

    move-result-object v7

    .line 374
    .local v7, "element":Ljavax/lang/model/element/TypeElement;
    iget-object v8, p0, Lorg/checkerframework/framework/stub/StubParser;->importedTypes:Ljava/util/Map;

    invoke-interface {v7}, Ljavax/lang/model/element/TypeElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_0

    .line 379
    .end local v6    # "importType":Ljavax/lang/model/element/TypeElement;
    .end local v7    # "element":Ljavax/lang/model/element/TypeElement;
    :goto_3
    goto :goto_4

    .line 377
    :catch_0
    move-exception v6

    .line 378
    .local v6, "error":Ljava/lang/AssertionError;
    invoke-virtual {v6}, Ljava/lang/AssertionError;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lorg/checkerframework/framework/stub/StubParser;->stubWarnNotFound(Ljava/lang/String;)V

    .line 380
    .end local v4    # "importDecl":Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;
    .end local v5    # "imported":Ljava/lang/String;
    .end local v6    # "error":Ljava/lang/AssertionError;
    :goto_4
    goto/16 :goto_0

    .line 381
    :cond_b
    return-object v0

    .line 294
    .end local v1    # "cu":Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;
    :cond_c
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method private getAnnotation(Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;Ljava/util/Map;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 12
    .param p1, "annotation"    # Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljavax/lang/model/element/TypeElement;",
            ">;)",
            "Ljavax/lang/model/element/AnnotationMirror;"
        }
    .end annotation

    .line 1550
    .local p2, "allStubAnnotations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljavax/lang/model/element/TypeElement;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;->getNameAsString()Ljava/lang/String;

    move-result-object v0

    .line 1551
    .local v0, "annoName":Ljava/lang/String;
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/TypeElement;

    .line 1552
    .local v1, "annoTypeElm":Ljavax/lang/model/element/TypeElement;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1554
    return-object v2

    .line 1556
    :cond_0
    invoke-interface {v1}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1558
    instance-of v3, p1, Lorg/checkerframework/com/github/javaparser/ast/expr/MarkerAnnotationExpr;

    if-eqz v3, :cond_1

    .line 1559
    iget-object v2, p0, Lorg/checkerframework/framework/stub/StubParser;->elements:Ljavax/lang/model/util/Elements;

    invoke-static {v2, v0}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromName(Ljavax/lang/model/util/Elements;Ljava/lang/CharSequence;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    return-object v2

    .line 1560
    :cond_1
    instance-of v3, p1, Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;

    const-string v4, "Annotation expression, %s, could not be processed for annotation: %s. "

    if-eqz v3, :cond_4

    .line 1561
    move-object v3, p1

    check-cast v3, Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;

    .line 1562
    .local v3, "nrmanno":Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;
    new-instance v5, Lorg/checkerframework/javacutil/AnnotationBuilder;

    iget-object v6, p0, Lorg/checkerframework/framework/stub/StubParser;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-direct {v5, v6, v0}, Lorg/checkerframework/javacutil/AnnotationBuilder;-><init>(Ljavax/annotation/processing/ProcessingEnvironment;Ljava/lang/CharSequence;)V

    .line 1563
    .local v5, "builder":Lorg/checkerframework/javacutil/AnnotationBuilder;
    invoke-virtual {v3}, Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;->getPairs()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v6

    .line 1564
    .local v6, "pairs":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/ast/expr/MemberValuePair;>;"
    if-eqz v6, :cond_3

    .line 1565
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/checkerframework/com/github/javaparser/ast/expr/MemberValuePair;

    .line 1566
    .local v8, "mvp":Lorg/checkerframework/com/github/javaparser/ast/expr/MemberValuePair;
    invoke-virtual {v8}, Lorg/checkerframework/com/github/javaparser/ast/expr/MemberValuePair;->getNameAsString()Ljava/lang/String;

    move-result-object v9

    .line 1567
    .local v9, "member":Ljava/lang/String;
    invoke-virtual {v8}, Lorg/checkerframework/com/github/javaparser/ast/expr/MemberValuePair;->getValue()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v10

    .line 1568
    .local v10, "exp":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    invoke-direct {p0, v5, v9, v10}, Lorg/checkerframework/framework/stub/StubParser;->builderAddElement(Lorg/checkerframework/javacutil/AnnotationBuilder;Ljava/lang/String;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Z

    move-result v11

    .line 1569
    .local v11, "success":Z
    if-nez v11, :cond_2

    .line 1570
    filled-new-array {v10, p1}, [Ljava/lang/Object;

    move-result-object v7

    invoke-direct {p0, v4, v7}, Lorg/checkerframework/framework/stub/StubParser;->stubWarn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1573
    return-object v2

    .line 1575
    .end local v8    # "mvp":Lorg/checkerframework/com/github/javaparser/ast/expr/MemberValuePair;
    .end local v9    # "member":Ljava/lang/String;
    .end local v10    # "exp":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .end local v11    # "success":Z
    :cond_2
    goto :goto_0

    .line 1577
    :cond_3
    invoke-virtual {v5}, Lorg/checkerframework/javacutil/AnnotationBuilder;->build()Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    return-object v2

    .line 1578
    .end local v3    # "nrmanno":Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;
    .end local v5    # "builder":Lorg/checkerframework/javacutil/AnnotationBuilder;
    .end local v6    # "pairs":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/ast/expr/MemberValuePair;>;"
    :cond_4
    instance-of v3, p1, Lorg/checkerframework/com/github/javaparser/ast/expr/SingleMemberAnnotationExpr;

    if-eqz v3, :cond_6

    .line 1579
    move-object v3, p1

    check-cast v3, Lorg/checkerframework/com/github/javaparser/ast/expr/SingleMemberAnnotationExpr;

    .line 1580
    .local v3, "sglanno":Lorg/checkerframework/com/github/javaparser/ast/expr/SingleMemberAnnotationExpr;
    new-instance v5, Lorg/checkerframework/javacutil/AnnotationBuilder;

    iget-object v6, p0, Lorg/checkerframework/framework/stub/StubParser;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-direct {v5, v6, v0}, Lorg/checkerframework/javacutil/AnnotationBuilder;-><init>(Ljavax/annotation/processing/ProcessingEnvironment;Ljava/lang/CharSequence;)V

    .line 1581
    .restart local v5    # "builder":Lorg/checkerframework/javacutil/AnnotationBuilder;
    invoke-virtual {v3}, Lorg/checkerframework/com/github/javaparser/ast/expr/SingleMemberAnnotationExpr;->getMemberValue()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v6

    .line 1582
    .local v6, "valexpr":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    const-string v7, "value"

    invoke-direct {p0, v5, v7, v6}, Lorg/checkerframework/framework/stub/StubParser;->builderAddElement(Lorg/checkerframework/javacutil/AnnotationBuilder;Ljava/lang/String;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Z

    move-result v7

    .line 1583
    .local v7, "success":Z
    if-nez v7, :cond_5

    .line 1584
    filled-new-array {v6, p1}, [Ljava/lang/Object;

    move-result-object v8

    invoke-direct {p0, v4, v8}, Lorg/checkerframework/framework/stub/StubParser;->stubWarn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1587
    return-object v2

    .line 1589
    :cond_5
    invoke-virtual {v5}, Lorg/checkerframework/javacutil/AnnotationBuilder;->build()Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    return-object v2

    .line 1591
    .end local v3    # "sglanno":Lorg/checkerframework/com/github/javaparser/ast/expr/SingleMemberAnnotationExpr;
    .end local v5    # "builder":Lorg/checkerframework/javacutil/AnnotationBuilder;
    .end local v6    # "valexpr":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .end local v7    # "success":Z
    :cond_6
    new-instance v2, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "StubParser: unknown annotation type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static getImportableMembers(Ljavax/lang/model/element/TypeElement;)Ljava/util/List;
    .locals 6
    .param p0, "typeElement"    # Ljavax/lang/model/element/TypeElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/TypeElement;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 267
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 268
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    nop

    .line 269
    invoke-interface {p0}, Ljavax/lang/model/element/TypeElement;->getEnclosedElements()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljavax/lang/model/util/ElementFilter;->fieldsIn(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 270
    .local v1, "memberElements":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/element/VariableElement;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/element/VariableElement;

    .line 271
    .local v3, "varElement":Ljavax/lang/model/element/VariableElement;
    invoke-interface {v3}, Ljavax/lang/model/element/VariableElement;->getConstantValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    .line 272
    invoke-interface {v3}, Ljavax/lang/model/element/VariableElement;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v4

    sget-object v5, Ljavax/lang/model/element/ElementKind;->ENUM_CONSTANT:Ljavax/lang/model/element/ElementKind;

    if-ne v4, v5, :cond_1

    .line 273
    :cond_0
    nop

    .line 276
    invoke-interface {p0}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 277
    invoke-interface {v3}, Ljavax/lang/model/element/VariableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    .line 274
    const-string v5, "%s.%s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 273
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    .end local v3    # "varElement":Ljavax/lang/model/element/VariableElement;
    :cond_1
    goto :goto_0

    .line 280
    :cond_2
    return-object v0
.end method

.method private getMembers(Ljavax/lang/model/element/TypeElement;Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;)Ljava/util/Map;
    .locals 5
    .param p1, "typeElt"    # Ljavax/lang/model/element/TypeElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/TypeElement;",
            "Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration<",
            "*>;)",
            "Ljava/util/Map<",
            "Ljavax/lang/model/element/Element;",
            "Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration<",
            "*>;>;"
        }
    .end annotation

    .line 1227
    .local p2, "typeDecl":Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration<*>;"
    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v0

    invoke-virtual {p2}, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;->getNameAsString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljavax/lang/model/element/Name;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1228
    invoke-virtual {p2}, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;->getNameAsString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1227
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    .line 1229
    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v1

    invoke-virtual {p2}, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%s  %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1231
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1233
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/Element;Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration<*>;>;"
    instance-of v1, p2, Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;

    if-eqz v1, :cond_2

    .line 1234
    move-object v1, p2

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;

    .line 1236
    .local v1, "enumDecl":Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;
    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;->getEntries()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;

    .line 1237
    .local v3, "member":Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration<*>;"
    invoke-virtual {p2}, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;->getNameAsString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, p1, v3, v4}, Lorg/checkerframework/framework/stub/StubParser;->putNewElement(Ljava/util/Map;Ljavax/lang/model/element/TypeElement;Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;Ljava/lang/String;)V

    .line 1238
    .end local v3    # "member":Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration<*>;"
    goto :goto_1

    .line 1240
    .end local v1    # "enumDecl":Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;
    :cond_2
    invoke-virtual {p2}, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;->getMembers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;

    .line 1241
    .local v2, "member":Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration<*>;"
    invoke-virtual {p2}, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;->getNameAsString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, p1, v2, v3}, Lorg/checkerframework/framework/stub/StubParser;->putNewElement(Ljava/util/Map;Ljavax/lang/model/element/TypeElement;Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;Ljava/lang/String;)V

    .line 1242
    .end local v2    # "member":Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration<*>;"
    goto :goto_2

    .line 1243
    :cond_3
    return-object v0
.end method

.method private varargs getTypeElement(Ljava/lang/String;[Ljava/lang/String;)Ljavax/lang/model/element/TypeElement;
    .locals 3
    .param p1, "typeName"    # Ljava/lang/String;
    .param p2, "msg"    # [Ljava/lang/String;

    .line 1521
    iget-object v0, p0, Lorg/checkerframework/framework/stub/StubParser;->elements:Ljavax/lang/model/util/Elements;

    invoke-interface {v0, p1}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object v0

    .line 1522
    .local v0, "classElement":Ljavax/lang/model/element/TypeElement;
    if-nez v0, :cond_1

    .line 1523
    array-length v1, p2

    if-nez v1, :cond_0

    .line 1524
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Type not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/checkerframework/framework/stub/StubParser;->stubWarnNotFound(Ljava/lang/String;)V

    goto :goto_0

    .line 1526
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    aget-object v2, p2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/checkerframework/framework/stub/StubParser;->stubWarnNotFound(Ljava/lang/String;)V

    .line 1529
    :cond_1
    :goto_0
    return-object v0
.end method

.method private getTypeElementOrNull(Ljava/lang/String;)Ljavax/lang/model/element/TypeElement;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 1508
    iget-object v0, p0, Lorg/checkerframework/framework/stub/StubParser;->elements:Ljavax/lang/model/util/Elements;

    invoke-interface {v0, p1}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object v0

    .line 1509
    .local v0, "typeElement":Ljavax/lang/model/element/TypeElement;
    if-eqz v0, :cond_0

    .line 1510
    iget-object v1, p0, Lorg/checkerframework/framework/stub/StubParser;->importedTypes:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1513
    :cond_0
    return-object v0
.end method

.method private getValueOfExpressionInAnnotation(Ljava/lang/String;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Ljavax/lang/model/type/TypeKind;)Ljava/lang/Object;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "expr"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .param p3, "valueKind"    # Ljavax/lang/model/type/TypeKind;

    .line 1598
    instance-of v0, p2, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_e

    instance-of v0, p2, Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 1615
    :cond_0
    instance-of v0, p2, Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;

    if-eqz v0, :cond_1

    .line 1616
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;->asString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1617
    :cond_1
    instance-of v0, p2, Lorg/checkerframework/com/github/javaparser/ast/expr/BooleanLiteralExpr;

    if-eqz v0, :cond_2

    .line 1618
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/BooleanLiteralExpr;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/BooleanLiteralExpr;->getValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 1619
    :cond_2
    instance-of v0, p2, Lorg/checkerframework/com/github/javaparser/ast/expr/CharLiteralExpr;

    if-eqz v0, :cond_3

    .line 1620
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/CharLiteralExpr;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/CharLiteralExpr;->asChar()C

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lorg/checkerframework/framework/stub/StubParser;->convert(Ljava/lang/Number;Ljavax/lang/model/type/TypeKind;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1621
    :cond_3
    instance-of v0, p2, Lorg/checkerframework/com/github/javaparser/ast/expr/DoubleLiteralExpr;

    if-eqz v0, :cond_4

    .line 1624
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/DoubleLiteralExpr;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/DoubleLiteralExpr;->asDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 1625
    :cond_4
    instance-of v0, p2, Lorg/checkerframework/com/github/javaparser/ast/expr/IntegerLiteralExpr;

    if-eqz v0, :cond_5

    .line 1626
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/IntegerLiteralExpr;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/IntegerLiteralExpr;->asInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lorg/checkerframework/framework/stub/StubParser;->convert(Ljava/lang/Number;Ljavax/lang/model/type/TypeKind;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1627
    :cond_5
    instance-of v0, p2, Lorg/checkerframework/com/github/javaparser/ast/expr/LongLiteralExpr;

    if-eqz v0, :cond_6

    .line 1628
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/LongLiteralExpr;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/LongLiteralExpr;->asLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lorg/checkerframework/framework/stub/StubParser;->convert(Ljava/lang/Number;Ljavax/lang/model/type/TypeKind;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1629
    :cond_6
    instance-of v0, p2, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;

    if-eqz v0, :cond_9

    .line 1630
    invoke-virtual {p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x1

    sparse-switch v3, :sswitch_data_0

    :cond_7
    goto :goto_0

    :sswitch_0
    const-string v3, "-9223372036854775808l"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v4

    goto :goto_1

    :sswitch_1
    const-string v3, "-9223372036854775808L"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v2

    goto :goto_1

    :sswitch_2
    const-string v3, "-2147483648"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 1640
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;->getOperator()Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr$Operator;

    move-result-object v0

    sget-object v3, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr$Operator;->MINUS:Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr$Operator;

    if-ne v0, v3, :cond_8

    .line 1641
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;

    .line 1643
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;->getExpression()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v0

    .line 1642
    invoke-direct {p0, p1, v0, p3}, Lorg/checkerframework/framework/stub/StubParser;->getValueOfExpressionInAnnotation(Ljava/lang/String;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Ljavax/lang/model/type/TypeKind;)Ljava/lang/Object;

    move-result-object v0

    .line 1644
    .local v0, "value":Ljava/lang/Object;
    instance-of v3, v0, Ljava/lang/Number;

    if-eqz v3, :cond_8

    .line 1645
    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-direct {p0, v1, p3, v4}, Lorg/checkerframework/framework/stub/StubParser;->convert(Ljava/lang/Number;Ljavax/lang/model/type/TypeKind;Z)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 1638
    .end local v0    # "value":Ljava/lang/Object;
    :pswitch_0
    const/high16 v0, -0x80000000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0, p3, v2}, Lorg/checkerframework/framework/stub/StubParser;->convert(Ljava/lang/Number;Ljavax/lang/model/type/TypeKind;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1636
    :pswitch_1
    const-wide/high16 v0, -0x8000000000000000L

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0, p3, v2}, Lorg/checkerframework/framework/stub/StubParser;->convert(Ljava/lang/Number;Ljavax/lang/model/type/TypeKind;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1648
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected Unary annotation expression: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v2}, Lorg/checkerframework/framework/stub/StubParser;->stubWarn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1649
    return-object v1

    .line 1651
    :cond_9
    instance-of v0, p2, Lorg/checkerframework/com/github/javaparser/ast/expr/ClassExpr;

    if-eqz v0, :cond_c

    .line 1652
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/ClassExpr;

    .line 1653
    .local v0, "classExpr":Lorg/checkerframework/com/github/javaparser/ast/expr/ClassExpr;
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/ClassExpr;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v3

    invoke-virtual {v3}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1654
    .local v3, "className":Ljava/lang/String;
    iget-object v4, p0, Lorg/checkerframework/framework/stub/StubParser;->importedTypes:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1655
    iget-object v1, p0, Lorg/checkerframework/framework/stub/StubParser;->importedTypes:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/TypeElement;

    invoke-interface {v1}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    return-object v1

    .line 1657
    :cond_a
    invoke-direct {p0, v3}, Lorg/checkerframework/framework/stub/StubParser;->findTypeOfName(Ljava/lang/String;)Ljavax/lang/model/element/TypeElement;

    move-result-object v4

    .line 1658
    .local v4, "typeElement":Ljavax/lang/model/element/TypeElement;
    if-nez v4, :cond_b

    .line 1659
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "StubParser: unknown class name "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v5, v2}, Lorg/checkerframework/framework/stub/StubParser;->stubWarn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1660
    return-object v1

    .line 1663
    :cond_b
    invoke-interface {v4}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    return-object v1

    .line 1664
    .end local v0    # "classExpr":Lorg/checkerframework/com/github/javaparser/ast/expr/ClassExpr;
    .end local v3    # "className":Ljava/lang/String;
    .end local v4    # "typeElement":Ljavax/lang/model/element/TypeElement;
    :cond_c
    instance-of v0, p2, Lorg/checkerframework/com/github/javaparser/ast/expr/NullLiteralExpr;

    if-eqz v0, :cond_d

    .line 1665
    const-string v0, "Null found as value for %s. Null isn\'t allowed as an annotation value"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lorg/checkerframework/framework/stub/StubParser;->stubWarn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1666
    return-object v1

    .line 1668
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected annotation expression: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v2}, Lorg/checkerframework/framework/stub/StubParser;->stubWarn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1669
    return-object v1

    .line 1600
    :cond_e
    :goto_2
    instance-of v0, p2, Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;

    if-eqz v0, :cond_f

    .line 1601
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;

    invoke-direct {p0, v0}, Lorg/checkerframework/framework/stub/StubParser;->findVariableElement(Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;)Ljavax/lang/model/element/VariableElement;

    move-result-object v0

    .local v0, "elem":Ljavax/lang/model/element/VariableElement;
    goto :goto_3

    .line 1603
    .end local v0    # "elem":Ljavax/lang/model/element/VariableElement;
    :cond_f
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;

    invoke-direct {p0, v0}, Lorg/checkerframework/framework/stub/StubParser;->findVariableElement(Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;)Ljavax/lang/model/element/VariableElement;

    move-result-object v0

    .line 1605
    .restart local v0    # "elem":Ljavax/lang/model/element/VariableElement;
    :goto_3
    if-nez v0, :cond_10

    .line 1606
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Field not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v3, v2}, Lorg/checkerframework/framework/stub/StubParser;->stubWarn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1607
    return-object v1

    .line 1609
    :cond_10
    invoke-interface {v0}, Ljavax/lang/model/element/VariableElement;->getConstantValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-interface {v0}, Ljavax/lang/model/element/VariableElement;->getConstantValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_4

    :cond_11
    move-object v1, v0

    .line 1610
    .local v1, "value":Ljava/lang/Object;
    :goto_4
    instance-of v2, v1, Ljava/lang/Number;

    if-eqz v2, :cond_12

    .line 1611
    move-object v2, v1

    check-cast v2, Ljava/lang/Number;

    invoke-direct {p0, v2, p3}, Lorg/checkerframework/framework/stub/StubParser;->convert(Ljava/lang/Number;Ljavax/lang/model/type/TypeKind;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 1613
    :cond_12
    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x16c1c01a -> :sswitch_2
        0x6a8ed036 -> :sswitch_1
        0x6a8ed056 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private hasNoStubParserWarning(Ljava/lang/Iterable;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;",
            ">;)Z"
        }
    .end annotation

    .line 610
    .local p1, "aexprs":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 611
    return v0

    .line 613
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;

    .line 614
    .local v2, "anno":Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;
    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;->getNameAsString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "NoStubParserWarning"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 615
    const/4 v0, 0x1

    return v0

    .line 617
    .end local v2    # "anno":Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;
    :cond_1
    goto :goto_0

    .line 618
    :cond_2
    return v0
.end method

.method private innermostComponentType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 3
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;

    .line 1101
    move-object v0, p1

    .line 1102
    .local v0, "componentType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :goto_0
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/type/TypeKind;->ARRAY:Ljavax/lang/model/type/TypeKind;

    if-ne v1, v2, :cond_0

    .line 1103
    move-object v1, v0

    check-cast v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->getComponentType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    goto :goto_0

    .line 1105
    :cond_0
    return-object v0
.end method

.method public static parse(Ljava/lang/String;Ljava/io/InputStream;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Ljavax/annotation/processing/ProcessingEnvironment;Ljava/util/Map;Ljava/util/Map;)V
    .locals 7
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "atypeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .param p3, "processingEnv"    # Ljavax/annotation/processing/ProcessingEnvironment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/InputStream;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeFactory;",
            "Ljavax/annotation/processing/ProcessingEnvironment;",
            "Ljava/util/Map<",
            "Ljavax/lang/model/element/Element;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;>;)V"
        }
    .end annotation

    .line 411
    .local p4, "atypes":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/Element;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    .local p5, "declAnnos":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;>;"
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lorg/checkerframework/framework/stub/StubParser;->parse(Ljava/lang/String;Ljava/io/InputStream;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Ljavax/annotation/processing/ProcessingEnvironment;Ljava/util/Map;Ljava/util/Map;Z)V

    .line 412
    return-void
.end method

.method private static parse(Ljava/lang/String;Ljava/io/InputStream;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Ljavax/annotation/processing/ProcessingEnvironment;Ljava/util/Map;Ljava/util/Map;Z)V
    .locals 8
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "atypeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .param p3, "processingEnv"    # Ljavax/annotation/processing/ProcessingEnvironment;
    .param p6, "isJdkAsStub"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/InputStream;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeFactory;",
            "Ljavax/annotation/processing/ProcessingEnvironment;",
            "Ljava/util/Map<",
            "Ljavax/lang/model/element/Element;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;>;Z)V"
        }
    .end annotation

    .line 454
    .local p4, "atypes":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/Element;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    .local p5, "declAnnos":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;>;"
    new-instance v7, Lorg/checkerframework/framework/stub/StubParser;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/checkerframework/framework/stub/StubParser;-><init>(Ljava/lang/String;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Ljavax/annotation/processing/ProcessingEnvironment;Ljava/util/Map;Ljava/util/Map;Z)V

    .line 458
    .local v0, "sp":Lorg/checkerframework/framework/stub/StubParser;
    :try_start_0
    invoke-direct {v0, p1}, Lorg/checkerframework/framework/stub/StubParser;->parseStubUnit(Ljava/io/InputStream;)V

    .line 459
    invoke-direct {v0}, Lorg/checkerframework/framework/stub/StubParser;->process()V
    :try_end_0
    .catch Lorg/checkerframework/com/github/javaparser/ParseProblemException; {:try_start_0 .. :try_end_0} :catch_0

    .line 472
    goto :goto_1

    .line 460
    :catch_0
    move-exception v1

    .line 461
    .local v1, "e":Lorg/checkerframework/com/github/javaparser/ParseProblemException;
    new-instance v2, Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception while parsing stub file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Encountered problems: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 467
    .local v2, "message":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ParseProblemException;->getProblems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/com/github/javaparser/Problem;

    .line 468
    .local v4, "p":Lorg/checkerframework/com/github/javaparser/Problem;
    invoke-virtual {v4}, Lorg/checkerframework/com/github/javaparser/Problem;->getVerboseMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    sget-object v5, Lorg/checkerframework/framework/stub/StubParser;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    .end local v4    # "p":Lorg/checkerframework/com/github/javaparser/Problem;
    goto :goto_0

    .line 471
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-direct {v0, v3, v4}, Lorg/checkerframework/framework/stub/StubParser;->stubWarn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 473
    .end local v1    # "e":Lorg/checkerframework/com/github/javaparser/ParseProblemException;
    .end local v2    # "message":Ljava/lang/StringBuilder;
    :goto_1
    return-void
.end method

.method public static parseJdkFileAsStub(Ljava/lang/String;Ljava/io/InputStream;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Ljavax/annotation/processing/ProcessingEnvironment;Ljava/util/Map;Ljava/util/Map;)V
    .locals 7
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "atypeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .param p3, "processingEnv"    # Ljavax/annotation/processing/ProcessingEnvironment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/InputStream;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeFactory;",
            "Ljavax/annotation/processing/ProcessingEnvironment;",
            "Ljava/util/Map<",
            "Ljavax/lang/model/element/Element;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;>;)V"
        }
    .end annotation

    .line 432
    .local p4, "atypes":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/Element;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    .local p5, "declAnnos":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;>;"
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lorg/checkerframework/framework/stub/StubParser;->parse(Ljava/lang/String;Ljava/io/InputStream;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Ljavax/annotation/processing/ProcessingEnvironment;Ljava/util/Map;Ljava/util/Map;Z)V

    .line 433
    return-void
.end method

.method private parseStubUnit(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .line 480
    iget-boolean v0, p0, Lorg/checkerframework/framework/stub/StubParser;->debugStubParser:Z

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lorg/checkerframework/framework/stub/StubParser;->filename:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "parsing stub file %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/framework/stub/StubParser;->stubDebug(Ljava/lang/String;)V

    .line 483
    :cond_0
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->parseStubUnit(Ljava/io/InputStream;)Lorg/checkerframework/com/github/javaparser/ast/StubUnit;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/framework/stub/StubParser;->stubUnit:Lorg/checkerframework/com/github/javaparser/ast/StubUnit;

    .line 487
    invoke-direct {p0}, Lorg/checkerframework/framework/stub/StubParser;->getAllStubAnnotations()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/framework/stub/StubParser;->allStubAnnotations:Ljava/util/Map;

    .line 488
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 489
    iget-object v0, p0, Lorg/checkerframework/framework/stub/StubParser;->filename:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 490
    const-string v1, "No supported annotations found! This likely means stub file %s doesn\'t import them correctly."

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 489
    invoke-direct {p0, v0}, Lorg/checkerframework/framework/stub/StubParser;->stubWarnNotFound(Ljava/lang/String;)V

    .line 494
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/framework/stub/StubParser;->allStubAnnotations:Ljava/util/Map;

    const-string v1, "java.lang"

    invoke-direct {p0, v1}, Lorg/checkerframework/framework/stub/StubParser;->findPackage(Ljava/lang/String;)Ljavax/lang/model/element/PackageElement;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/checkerframework/framework/stub/StubParser;->annosInPackage(Ljavax/lang/model/element/PackageElement;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 495
    return-void
.end method

.method private process()V
    .locals 1

    .line 499
    iget-object v0, p0, Lorg/checkerframework/framework/stub/StubParser;->stubUnit:Lorg/checkerframework/com/github/javaparser/ast/StubUnit;

    invoke-direct {p0, v0}, Lorg/checkerframework/framework/stub/StubParser;->processStubUnit(Lorg/checkerframework/com/github/javaparser/ast/StubUnit;)V

    .line 500
    return-void
.end method

.method private processCallableDeclaration(Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;Ljavax/lang/model/element/ExecutableElement;)V
    .locals 8
    .param p2, "elt"    # Ljavax/lang/model/element/ExecutableElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration<",
            "*>;",
            "Ljavax/lang/model/element/ExecutableElement;",
            ")V"
        }
    .end annotation

    .line 745
    .local p1, "decl":Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration<*>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lorg/checkerframework/framework/stub/StubParser;->recordDeclAnnotation(Ljavax/lang/model/element/Element;Ljava/util/List;)V

    .line 746
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->isMethodDeclaration()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 748
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lorg/checkerframework/framework/stub/StubParser;->recordDeclAnnotation(Ljavax/lang/model/element/Element;Ljava/util/List;)V

    .line 750
    :cond_0
    invoke-direct {p0, p2}, Lorg/checkerframework/framework/stub/StubParser;->recordDeclAnnotationFromStubFile(Ljavax/lang/model/element/Element;)V

    .line 752
    iget-object v0, p0, Lorg/checkerframework/framework/stub/StubParser;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {v0, p2}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->fromElement(Ljavax/lang/model/element/ExecutableElement;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    move-result-object v0

    .line 755
    .local v0, "methodType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    iget-boolean v1, p0, Lorg/checkerframework/framework/stub/StubParser;->warnIfStubRedundantWithBytecode:Z

    if-eqz v1, :cond_1

    .line 756
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->deepCopy()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    move-result-object v1

    .local v1, "origMethodType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    goto :goto_0

    .line 758
    .end local v1    # "origMethodType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    :cond_1
    const/4 v1, 0x0

    .line 762
    .restart local v1    # "origMethodType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    :goto_0
    iget-object v5, p0, Lorg/checkerframework/framework/stub/StubParser;->atypes:Ljava/util/Map;

    .line 763
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getTypeVariables()Ljava/util/List;

    move-result-object v6

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->getTypeParameters()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v7

    .line 762
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v7}, Lorg/checkerframework/framework/stub/StubParser;->annotateTypeParameters(Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;Ljava/lang/Object;Ljava/util/Map;Ljava/util/List;Ljava/util/List;)V

    .line 764
    iget-object v2, p0, Lorg/checkerframework/framework/stub/StubParser;->typeParameters:Ljava/util/List;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getTypeVariables()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 767
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->isMethodDeclaration()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 768
    nop

    .line 769
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReturnType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    move-object v3, p1

    check-cast v3, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;

    .line 770
    invoke-virtual {v3}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v3

    .line 771
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v4

    .line 768
    invoke-direct {p0, v2, v3, v4}, Lorg/checkerframework/framework/stub/StubParser;->annotate(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/com/github/javaparser/ast/type/Type;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    goto :goto_1

    .line 773
    :cond_2
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReturnType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lorg/checkerframework/framework/stub/StubParser;->annotate(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/List;)V

    .line 777
    :goto_1
    invoke-direct {p0, p1, p2, v0}, Lorg/checkerframework/framework/stub/StubParser;->processParameters(Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;Ljavax/lang/model/element/ExecutableElement;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;)V

    .line 780
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->getReceiverParameter()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 781
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReceiverType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v2

    if-nez v2, :cond_4

    .line 782
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->isConstructorDeclaration()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 783
    nop

    .line 787
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->getReceiverParameter()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;

    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 783
    const-string v3, "parseParameter: constructor of a top-level class cannot have receiver annotations%nConstructor: %s%nReceiver annotations: %s"

    invoke-direct {p0, v3, v2}, Lorg/checkerframework/framework/stub/StubParser;->stubWarn(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 789
    :cond_3
    nop

    .line 793
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->getReceiverParameter()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;

    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 789
    const-string v3, "parseParameter: static methods cannot have receiver annotations%nMethod: %s%nReceiver annotations: %s"

    invoke-direct {p0, v3, v2}, Lorg/checkerframework/framework/stub/StubParser;->stubWarn(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 797
    :cond_4
    nop

    .line 798
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReceiverType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v2

    .line 799
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->getReceiverParameter()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;

    invoke-virtual {v3}, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    .line 797
    invoke-direct {p0, v2, v3}, Lorg/checkerframework/framework/stub/StubParser;->annotate(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/List;)V

    .line 801
    nop

    .line 802
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReceiverType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v2

    .line 803
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->getReceiverParameter()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;

    invoke-virtual {v3}, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v3

    .line 804
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->getReceiverParameter()Ljava/util/Optional;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;

    invoke-virtual {v4}, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v4

    .line 801
    invoke-direct {p0, v2, v3, v4}, Lorg/checkerframework/framework/stub/StubParser;->annotate(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/com/github/javaparser/ast/type/Type;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 808
    :cond_5
    :goto_2
    iget-boolean v2, p0, Lorg/checkerframework/framework/stub/StubParser;->warnIfStubRedundantWithBytecode:Z

    if-eqz v2, :cond_6

    .line 809
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lorg/checkerframework/framework/stub/StubParser;->isJdkAsStub:Z

    if-nez v2, :cond_6

    .line 811
    iget-object v2, p0, Lorg/checkerframework/framework/stub/StubParser;->filename:Ljava/lang/String;

    .line 814
    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 815
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->getBegin()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/Position;

    iget v3, v3, Lorg/checkerframework/com/github/javaparser/Position;->line:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 816
    invoke-static {p2}, Lorg/checkerframework/javacutil/ElementUtils;->getVerboseName(Ljavax/lang/model/element/Element;)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    .line 812
    const-string v3, "in file %s at line %s: redundant stub file specification for: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 811
    invoke-direct {p0, v2, v3}, Lorg/checkerframework/framework/stub/StubParser;->stubWarn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 820
    :cond_6
    iget-object v2, p0, Lorg/checkerframework/framework/stub/StubParser;->atypes:Ljava/util/Map;

    invoke-direct {p0, v2, p2, v0}, Lorg/checkerframework/framework/stub/StubParser;->putNew(Ljava/util/Map;Ljavax/lang/model/element/Element;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 821
    iget-object v2, p0, Lorg/checkerframework/framework/stub/StubParser;->typeParameters:Ljava/util/List;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getTypeVariables()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 822
    return-void
.end method

.method private processCompilationUnit(Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;)V
    .locals 4
    .param p1, "cu"    # Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;

    .line 512
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->getPackageDeclaration()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 513
    const/4 v0, 0x0

    .line 514
    .local v0, "packageAnnos":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    new-instance v2, Lorg/checkerframework/framework/stub/StubParser$FqName;

    invoke-direct {v2, v1, v1}, Lorg/checkerframework/framework/stub/StubParser$FqName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lorg/checkerframework/framework/stub/StubParser;->parseState:Lorg/checkerframework/framework/stub/StubParser$FqName;

    goto :goto_0

    .line 516
    .end local v0    # "packageAnnos":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->getPackageDeclaration()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;

    .line 517
    .local v0, "pDecl":Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    .line 518
    .local v2, "packageAnnos":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    invoke-direct {p0, v0}, Lorg/checkerframework/framework/stub/StubParser;->processPackage(Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;)V

    move-object v0, v2

    .line 520
    .end local v2    # "packageAnnos":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    .local v0, "packageAnnos":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    :goto_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->getTypes()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 521
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->getTypes()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;

    .line 522
    .local v3, "typeDeclaration":Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration<*>;"
    invoke-direct {p0, v3, v1, v0}, Lorg/checkerframework/framework/stub/StubParser;->processTypeDecl(Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;Ljava/lang/String;Ljava/util/List;)V

    .line 523
    .end local v3    # "typeDeclaration":Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration<*>;"
    goto :goto_1

    .line 525
    :cond_1
    return-void
.end method

.method private processEnum(Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;Ljavax/lang/model/element/TypeElement;)Ljava/util/List;
    .locals 6
    .param p1, "decl"    # Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;
    .param p2, "elt"    # Ljavax/lang/model/element/TypeElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;",
            "Ljavax/lang/model/element/TypeElement;",
            ")",
            "Ljava/util/List<",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;",
            ">;"
        }
    .end annotation

    .line 686
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lorg/checkerframework/framework/stub/StubParser;->recordDeclAnnotation(Ljavax/lang/model/element/Element;Ljava/util/List;)V

    .line 687
    iget-object v0, p0, Lorg/checkerframework/framework/stub/StubParser;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {v0, p2}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->fromElement(Ljavax/lang/model/element/TypeElement;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v0

    .line 688
    .local v0, "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/checkerframework/framework/stub/StubParser;->annotate(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/List;)V

    .line 690
    iget-object v1, p0, Lorg/checkerframework/framework/stub/StubParser;->atypes:Ljava/util/Map;

    invoke-direct {p0, v1, p2, v0}, Lorg/checkerframework/framework/stub/StubParser;->putNew(Ljava/util/Map;Ljavax/lang/model/element/Element;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 691
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 692
    .local v1, "typeVariables":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;>;"
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 693
    .local v3, "typeV":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v4

    sget-object v5, Ljavax/lang/model/type/TypeKind;->TYPEVAR:Ljavax/lang/model/type/TypeKind;

    if-eq v4, v5, :cond_0

    .line 694
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "expected an AnnotatedTypeVariable but found type kind "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 696
    invoke-virtual {v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    .line 694
    invoke-direct {p0, v4, v5}, Lorg/checkerframework/framework/stub/StubParser;->stubWarn(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 700
    :cond_0
    move-object v4, v3

    check-cast v4, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 702
    .end local v3    # "typeV":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :goto_1
    goto :goto_0

    .line 703
    :cond_1
    return-object v1
.end method

.method private processEnumConstant(Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;Ljavax/lang/model/element/VariableElement;)V
    .locals 2
    .param p1, "decl"    # Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;
    .param p2, "elt"    # Ljavax/lang/model/element/VariableElement;

    .line 1088
    invoke-direct {p0, p2}, Lorg/checkerframework/framework/stub/StubParser;->recordDeclAnnotationFromStubFile(Ljavax/lang/model/element/Element;)V

    .line 1089
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lorg/checkerframework/framework/stub/StubParser;->recordDeclAnnotation(Ljavax/lang/model/element/Element;Ljava/util/List;)V

    .line 1090
    iget-object v0, p0, Lorg/checkerframework/framework/stub/StubParser;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {v0, p2}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->fromElement(Ljavax/lang/model/element/Element;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 1091
    .local v0, "enumConstType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/checkerframework/framework/stub/StubParser;->annotate(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/List;)V

    .line 1092
    iget-object v1, p0, Lorg/checkerframework/framework/stub/StubParser;->atypes:Ljava/util/Map;

    invoke-direct {p0, v1, p2, v0}, Lorg/checkerframework/framework/stub/StubParser;->putNew(Ljava/util/Map;Ljavax/lang/model/element/Element;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 1093
    return-void
.end method

.method private processField(Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;Ljavax/lang/model/element/VariableElement;)V
    .locals 6
    .param p1, "decl"    # Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;
    .param p2, "elt"    # Ljavax/lang/model/element/VariableElement;

    .line 1059
    iget-boolean v0, p0, Lorg/checkerframework/framework/stub/StubParser;->isJdkAsStub:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->getModifiers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/ast/Modifier;->privateModifier()Lorg/checkerframework/com/github/javaparser/ast/Modifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->contains(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1062
    return-void

    .line 1064
    :cond_0
    invoke-direct {p0, p2}, Lorg/checkerframework/framework/stub/StubParser;->recordDeclAnnotationFromStubFile(Ljavax/lang/model/element/Element;)V

    .line 1065
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lorg/checkerframework/framework/stub/StubParser;->recordDeclAnnotation(Ljavax/lang/model/element/Element;Ljava/util/List;)V

    .line 1067
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->getElementType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lorg/checkerframework/framework/stub/StubParser;->recordDeclAnnotation(Ljavax/lang/model/element/Element;Ljava/util/List;)V

    .line 1068
    iget-object v0, p0, Lorg/checkerframework/framework/stub/StubParser;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {v0, p2}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->fromElement(Ljavax/lang/model/element/Element;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 1070
    .local v0, "fieldType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    const/4 v1, 0x0

    .line 1071
    .local v1, "fieldVarDecl":Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;
    invoke-interface {p2}, Ljavax/lang/model/element/VariableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1072
    .local v2, "eltName":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->getVariables()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-virtual {v3}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;

    .line 1073
    .local v4, "var":Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;
    invoke-virtual {v4}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v5

    invoke-virtual {v5}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1074
    move-object v1, v4

    .line 1075
    goto :goto_1

    .line 1077
    .end local v4    # "var":Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;
    :cond_1
    goto :goto_0

    .line 1078
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 1079
    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v3

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v4

    invoke-direct {p0, v0, v3, v4}, Lorg/checkerframework/framework/stub/StubParser;->annotate(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/com/github/javaparser/ast/type/Type;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 1080
    iget-object v3, p0, Lorg/checkerframework/framework/stub/StubParser;->atypes:Ljava/util/Map;

    invoke-direct {p0, v3, p2, v0}, Lorg/checkerframework/framework/stub/StubParser;->putNew(Ljava/util/Map;Ljavax/lang/model/element/Element;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 1081
    return-void

    .line 1078
    :cond_3
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
.end method

.method private processPackage(Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;)V
    .locals 3
    .param p1, "packDecl"    # Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;

    .line 528
    if-eqz p1, :cond_1

    .line 529
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;->getNameAsString()Ljava/lang/String;

    move-result-object v0

    .line 530
    .local v0, "packageName":Ljava/lang/String;
    new-instance v1, Lorg/checkerframework/framework/stub/StubParser$FqName;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lorg/checkerframework/framework/stub/StubParser$FqName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/checkerframework/framework/stub/StubParser;->parseState:Lorg/checkerframework/framework/stub/StubParser$FqName;

    .line 531
    iget-object v1, p0, Lorg/checkerframework/framework/stub/StubParser;->elements:Ljavax/lang/model/util/Elements;

    invoke-interface {v1, v0}, Ljavax/lang/model/util/Elements;->getPackageElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/PackageElement;

    move-result-object v1

    .line 534
    .local v1, "elem":Ljavax/lang/model/element/Element;
    if-eqz v1, :cond_0

    .line 535
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/framework/stub/StubParser;->recordDeclAnnotation(Ljavax/lang/model/element/Element;Ljava/util/List;)V

    .line 538
    :cond_0
    return-void

    .line 528
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "elem":Ljavax/lang/model/element/Element;
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private processParameters(Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;Ljavax/lang/model/element/ExecutableElement;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;)V
    .locals 10
    .param p2, "elt"    # Ljavax/lang/model/element/ExecutableElement;
    .param p3, "methodType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration<",
            "*>;",
            "Ljavax/lang/model/element/ExecutableElement;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;",
            ")V"
        }
    .end annotation

    .line 836
    .local p1, "method":Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration<*>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->getParameters()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    .line 837
    .local v0, "params":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;>;"
    invoke-interface {p2}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v1

    .line 838
    .local v1, "paramElts":Ljava/util/List;, "Ljava/util/List<+Ljavax/lang/model/element/VariableElement;>;"
    invoke-virtual {p3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getParameterTypes()Ljava/util/List;

    move-result-object v2

    .line 840
    .local v2, "paramTypes":Ljava/util/List;, "Ljava/util/List<+Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getParameterTypes()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 841
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/lang/model/element/VariableElement;

    .line 842
    .local v4, "paramElt":Ljavax/lang/model/element/VariableElement;
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 843
    .local v5, "paramType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;

    .line 845
    .local v6, "param":Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;
    invoke-virtual {v6}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v7

    invoke-direct {p0, v4, v7}, Lorg/checkerframework/framework/stub/StubParser;->recordDeclAnnotation(Ljavax/lang/model/element/Element;Ljava/util/List;)V

    .line 846
    invoke-virtual {v6}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v7

    invoke-virtual {v7}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v7

    invoke-direct {p0, v4, v7}, Lorg/checkerframework/framework/stub/StubParser;->recordDeclAnnotation(Ljavax/lang/model/element/Element;Ljava/util/List;)V

    .line 848
    invoke-virtual {v6}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;->isVarArgs()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 849
    invoke-virtual {v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v7

    sget-object v8, Ljavax/lang/model/type/TypeKind;->ARRAY:Ljavax/lang/model/type/TypeKind;

    if-ne v7, v8, :cond_0

    .line 852
    move-object v7, v5

    check-cast v7, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;

    .line 853
    invoke-virtual {v7}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->getComponentType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v7

    .line 854
    invoke-virtual {v6}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v8

    .line 855
    invoke-virtual {v6}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v9

    .line 852
    invoke-direct {p0, v7, v8, v9}, Lorg/checkerframework/framework/stub/StubParser;->annotate(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/com/github/javaparser/ast/type/Type;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 857
    invoke-virtual {v6}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;->getVarArgsAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v7

    invoke-direct {p0, v5, v7}, Lorg/checkerframework/framework/stub/StubParser;->annotate(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/List;)V

    goto :goto_1

    .line 849
    :cond_0
    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 859
    :cond_1
    invoke-virtual {v6}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v7

    invoke-virtual {v6}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v8

    invoke-direct {p0, v5, v7, v8}, Lorg/checkerframework/framework/stub/StubParser;->annotate(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/com/github/javaparser/ast/type/Type;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 840
    .end local v4    # "paramElt":Ljavax/lang/model/element/VariableElement;
    .end local v5    # "paramType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v6    # "param":Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 862
    .end local v3    # "i":I
    :cond_2
    return-void
.end method

.method private processStubUnit(Lorg/checkerframework/com/github/javaparser/ast/StubUnit;)V
    .locals 2
    .param p1, "index"    # Lorg/checkerframework/com/github/javaparser/ast/StubUnit;

    .line 504
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/StubUnit;->getCompilationUnits()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;

    .line 505
    .local v1, "cu":Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;
    invoke-direct {p0, v1}, Lorg/checkerframework/framework/stub/StubParser;->processCompilationUnit(Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;)V

    .line 506
    .end local v1    # "cu":Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;
    goto :goto_0

    .line 507
    :cond_0
    return-void
.end method

.method private processType(Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Ljavax/lang/model/element/TypeElement;)Ljava/util/List;
    .locals 20
    .param p1, "decl"    # Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;
    .param p2, "elt"    # Ljavax/lang/model/element/TypeElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;",
            "Ljavax/lang/model/element/TypeElement;",
            ")",
            "Ljava/util/List<",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;",
            ">;"
        }
    .end annotation

    .line 624
    move-object/from16 v6, p0

    move-object/from16 v7, p2

    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {v6, v7, v0}, Lorg/checkerframework/framework/stub/StubParser;->recordDeclAnnotation(Ljavax/lang/model/element/Element;Ljava/util/List;)V

    .line 625
    iget-object v0, v6, Lorg/checkerframework/framework/stub/StubParser;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {v0, v7}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->fromElement(Ljavax/lang/model/element/TypeElement;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v5

    .line 626
    .local v5, "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {v6, v5, v0}, Lorg/checkerframework/framework/stub/StubParser;->annotate(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/List;)V

    .line 628
    invoke-virtual {v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v18

    .line 629
    .local v18, "typeArguments":Ljava/util/List;, "Ljava/util/List<+Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getTypeParameters()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v19

    .line 637
    .local v19, "typeParameters":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;>;"
    iget-boolean v0, v6, Lorg/checkerframework/framework/stub/StubParser;->debugStubParser:Z

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    .line 638
    if-nez v19, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v0

    .line 639
    .local v0, "numParams":I
    :goto_0
    if-nez v18, :cond_1

    move v1, v4

    goto :goto_1

    :cond_1
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v1

    .line 640
    .local v1, "numArgs":I
    :goto_1
    if-eq v0, v1, :cond_2

    .line 641
    nop

    .line 645
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 647
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 648
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/checkerframework/framework/stub/StubParser;->LINE_SEPARATOR:Ljava/lang/String;

    const-string v8, " "

    invoke-virtual {v2, v3, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    .line 649
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    .line 650
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    .line 652
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    iget-object v2, v6, Lorg/checkerframework/framework/stub/StubParser;->parseState:Lorg/checkerframework/framework/stub/StubParser$FqName;

    move-object/from16 v8, v19

    move-object/from16 v10, v18

    move-object v15, v5

    move-object/from16 v17, v2

    filled-new-array/range {v8 .. v17}, [Ljava/lang/Object;

    move-result-object v2

    .line 642
    const-string v3, "parseType:  mismatched sizes for typeParameters=%s (size %d) and typeArguments=%s (size %d); decl=%s; elt=%s (%s); type=%s (%s); parseState=%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 641
    invoke-direct {v6, v2}, Lorg/checkerframework/framework/stub/StubParser;->stubDebug(Ljava/lang/String;)V

    .line 654
    const-string v2, "Proceeding despite mismatched sizes"

    invoke-direct {v6, v2}, Lorg/checkerframework/framework/stub/StubParser;->stubDebug(Ljava/lang/String;)V

    .line 658
    .end local v0    # "numParams":I
    .end local v1    # "numArgs":I
    :cond_2
    iget-object v3, v6, Lorg/checkerframework/framework/stub/StubParser;->atypes:Ljava/util/Map;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v8, v4

    move-object/from16 v4, v18

    move-object v9, v5

    .end local v5    # "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .local v9, "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    move-object/from16 v5, v19

    invoke-direct/range {v0 .. v5}, Lorg/checkerframework/framework/stub/StubParser;->annotateTypeParameters(Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;Ljava/lang/Object;Ljava/util/Map;Ljava/util/List;Ljava/util/List;)V

    .line 659
    move-object/from16 v0, p1

    invoke-direct {v6, v0, v9}, Lorg/checkerframework/framework/stub/StubParser;->annotateSupertypes(Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;)V

    .line 660
    iget-object v1, v6, Lorg/checkerframework/framework/stub/StubParser;->atypes:Ljava/util/Map;

    invoke-direct {v6, v1, v7, v9}, Lorg/checkerframework/framework/stub/StubParser;->putNew(Ljava/util/Map;Ljavax/lang/model/element/Element;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 661
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 662
    .local v1, "typeVariables":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;>;"
    invoke-virtual {v9}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 663
    .local v3, "typeV":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v4

    sget-object v5, Ljavax/lang/model/type/TypeKind;->TYPEVAR:Ljavax/lang/model/type/TypeKind;

    if-eq v4, v5, :cond_3

    .line 664
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "expected an AnnotatedTypeVariable but found type kind "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 666
    invoke-virtual {v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    .line 664
    invoke-direct {v6, v4, v5}, Lorg/checkerframework/framework/stub/StubParser;->stubWarn(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 670
    :cond_3
    move-object v4, v3

    check-cast v4, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 672
    .end local v3    # "typeV":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :goto_3
    goto :goto_2

    .line 673
    :cond_4
    return-object v1
.end method

.method private processTypeDecl(Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;Ljava/lang/String;Ljava/util/List;)V
    .locals 10
    .param p2, "outertypeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;",
            ">;)V"
        }
    .end annotation

    .line 546
    .local p1, "typeDecl":Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration<*>;"
    .local p3, "packageAnnos":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    iget-object v0, p0, Lorg/checkerframework/framework/stub/StubParser;->parseState:Lorg/checkerframework/framework/stub/StubParser$FqName;

    if-eqz v0, :cond_9

    .line 547
    iget-boolean v0, p0, Lorg/checkerframework/framework/stub/StubParser;->isJdkAsStub:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;->getModifiers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/ast/Modifier;->privateModifier()Lorg/checkerframework/com/github/javaparser/ast/Modifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->contains(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 550
    return-void

    .line 552
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 553
    if-nez p2, :cond_1

    const-string v1, ""

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;->getNameAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 554
    .local v0, "innerName":Ljava/lang/String;
    new-instance v1, Lorg/checkerframework/framework/stub/StubParser$FqName;

    iget-object v2, p0, Lorg/checkerframework/framework/stub/StubParser;->parseState:Lorg/checkerframework/framework/stub/StubParser$FqName;

    iget-object v2, v2, Lorg/checkerframework/framework/stub/StubParser$FqName;->packageName:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lorg/checkerframework/framework/stub/StubParser$FqName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/checkerframework/framework/stub/StubParser;->parseState:Lorg/checkerframework/framework/stub/StubParser$FqName;

    .line 555
    invoke-virtual {v1}, Lorg/checkerframework/framework/stub/StubParser$FqName;->toString()Ljava/lang/String;

    move-result-object v1

    .line 556
    .local v1, "fqTypeName":Ljava/lang/String;
    iget-object v2, p0, Lorg/checkerframework/framework/stub/StubParser;->elements:Ljavax/lang/model/util/Elements;

    invoke-interface {v2, v1}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object v2

    .line 557
    .local v2, "typeElt":Ljavax/lang/model/element/TypeElement;
    if-nez v2, :cond_4

    .line 558
    iget-boolean v3, p0, Lorg/checkerframework/framework/stub/StubParser;->debugStubParser:Z

    if-nez v3, :cond_2

    .line 559
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/checkerframework/framework/stub/StubParser;->hasNoStubParserWarning(Ljava/lang/Iterable;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 560
    invoke-direct {p0, p3}, Lorg/checkerframework/framework/stub/StubParser;->hasNoStubParserWarning(Ljava/lang/Iterable;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lorg/checkerframework/framework/stub/StubParser;->warnIfNotFoundIgnoresClasses:Z

    if-nez v3, :cond_3

    .line 562
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Type not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/checkerframework/framework/stub/StubParser;->stubWarnNotFound(Ljava/lang/String;)V

    .line 564
    :cond_3
    return-void

    .line 567
    :cond_4
    invoke-interface {v2}, Ljavax/lang/model/element/TypeElement;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v3

    sget-object v4, Ljavax/lang/model/element/ElementKind;->ENUM:Ljavax/lang/model/element/ElementKind;

    if-ne v3, v4, :cond_5

    .line 568
    iget-object v3, p0, Lorg/checkerframework/framework/stub/StubParser;->typeParameters:Ljava/util/List;

    move-object v4, p1

    check-cast v4, Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;

    invoke-direct {p0, v4, v2}, Lorg/checkerframework/framework/stub/StubParser;->processEnum(Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;Ljavax/lang/model/element/TypeElement;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 569
    :cond_5
    invoke-interface {v2}, Ljavax/lang/model/element/TypeElement;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v3

    sget-object v4, Ljavax/lang/model/element/ElementKind;->ANNOTATION_TYPE:Ljavax/lang/model/element/ElementKind;

    if-ne v3, v4, :cond_6

    .line 570
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping annotation type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/checkerframework/framework/stub/StubParser;->stubWarnNotFound(Ljava/lang/String;)V

    goto :goto_1

    .line 571
    :cond_6
    instance-of v3, p1, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    if-eqz v3, :cond_7

    .line 572
    iget-object v3, p0, Lorg/checkerframework/framework/stub/StubParser;->typeParameters:Ljava/util/List;

    move-object v4, p1

    check-cast v4, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    invoke-direct {p0, v4, v2}, Lorg/checkerframework/framework/stub/StubParser;->processType(Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Ljavax/lang/model/element/TypeElement;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 576
    :cond_7
    :goto_1
    invoke-direct {p0, v2, p1}, Lorg/checkerframework/framework/stub/StubParser;->getMembers(Ljavax/lang/model/element/TypeElement;Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;)Ljava/util/Map;

    move-result-object v3

    .line 577
    .local v3, "elementsToDecl":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/Element;Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration<*>;>;"
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 578
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavax/lang/model/element/Element;Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration<*>;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavax/lang/model/element/Element;

    .line 579
    .local v6, "elt":Ljavax/lang/model/element/Element;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;

    .line 580
    .local v7, "decl":Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration<*>;"
    sget-object v8, Lorg/checkerframework/framework/stub/StubParser$1;->$SwitchMap$javax$lang$model$element$ElementKind:[I

    invoke-interface {v6}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v9

    invoke-virtual {v9}, Ljavax/lang/model/element/ElementKind;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 601
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "StubParser ignoring: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lorg/checkerframework/framework/stub/StubParser;->stubWarnNotFound(Ljava/lang/String;)V

    goto :goto_3

    .line 597
    :pswitch_0
    move-object v8, v7

    check-cast v8, Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;

    invoke-direct {p0, v8, v0, p3}, Lorg/checkerframework/framework/stub/StubParser;->processTypeDecl(Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;Ljava/lang/String;Ljava/util/List;)V

    .line 598
    goto :goto_3

    .line 594
    :pswitch_1
    move-object v8, v7

    check-cast v8, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    invoke-direct {p0, v8, v0, p3}, Lorg/checkerframework/framework/stub/StubParser;->processTypeDecl(Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;Ljava/lang/String;Ljava/util/List;)V

    .line 595
    goto :goto_3

    .line 589
    :pswitch_2
    move-object v8, v7

    check-cast v8, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;

    move-object v9, v6

    check-cast v9, Ljavax/lang/model/element/ExecutableElement;

    invoke-direct {p0, v8, v9}, Lorg/checkerframework/framework/stub/StubParser;->processCallableDeclaration(Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;Ljavax/lang/model/element/ExecutableElement;)V

    .line 591
    goto :goto_3

    .line 585
    :pswitch_3
    move-object v8, v7

    check-cast v8, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;

    move-object v9, v6

    check-cast v9, Ljavax/lang/model/element/VariableElement;

    invoke-direct {p0, v8, v9}, Lorg/checkerframework/framework/stub/StubParser;->processEnumConstant(Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;Ljavax/lang/model/element/VariableElement;)V

    .line 586
    goto :goto_3

    .line 582
    :pswitch_4
    move-object v8, v7

    check-cast v8, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;

    move-object v9, v6

    check-cast v9, Ljavax/lang/model/element/VariableElement;

    invoke-direct {p0, v8, v9}, Lorg/checkerframework/framework/stub/StubParser;->processField(Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;Ljavax/lang/model/element/VariableElement;)V

    .line 583
    nop

    .line 604
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavax/lang/model/element/Element;Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration<*>;>;"
    .end local v6    # "elt":Ljavax/lang/model/element/Element;
    .end local v7    # "decl":Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration<*>;"
    :goto_3
    goto :goto_2

    .line 605
    :cond_8
    iget-object v4, p0, Lorg/checkerframework/framework/stub/StubParser;->typeParameters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 606
    return-void

    .line 546
    .end local v0    # "innerName":Ljava/lang/String;
    .end local v1    # "fqTypeName":Ljava/lang/String;
    .end local v2    # "typeElt":Ljavax/lang/model/element/TypeElement;
    .end local v3    # "elementsToDecl":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/Element;Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration<*>;>;"
    :cond_9
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static putAllNew(Ljava/util/Map;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1989
    .local p0, "m":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "m2":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1990
    .local v1, "e2":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lorg/checkerframework/framework/stub/StubParser;->putNoOverride(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1991
    .end local v1    # "e2":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    goto :goto_0

    .line 1992
    :cond_0
    return-void
.end method

.method private putNew(Ljava/util/Map;Ljavax/lang/model/element/Element;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V
    .locals 2
    .param p2, "key"    # Ljavax/lang/model/element/Element;
    .param p3, "newType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljavax/lang/model/element/Element;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;",
            "Ljavax/lang/model/element/Element;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ")V"
        }
    .end annotation

    .line 1967
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/Element;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    if-eqz p2, :cond_2

    .line 1970
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1971
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 1972
    .local v0, "existingType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-boolean v1, p0, Lorg/checkerframework/framework/stub/StubParser;->isJdkAsStub:Z

    if-eqz v1, :cond_0

    .line 1977
    invoke-static {v0, p3}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeMerger;->merge(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    goto :goto_0

    .line 1979
    :cond_0
    invoke-static {p3, v0}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeMerger;->merge(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 1981
    :goto_0
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1982
    .end local v0    # "existingType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    goto :goto_1

    .line 1983
    :cond_1
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1985
    :goto_1
    return-void

    .line 1968
    :cond_2
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    const-string v1, "StubParser: key is null"

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private putNewElement(Ljava/util/Map;Ljavax/lang/model/element/TypeElement;Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;Ljava/lang/String;)V
    .locals 4
    .param p2, "typeElt"    # Ljavax/lang/model/element/TypeElement;
    .param p4, "typeDeclName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljavax/lang/model/element/Element;",
            "Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration<",
            "*>;>;",
            "Ljavax/lang/model/element/TypeElement;",
            "Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1256
    .local p1, "result":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/Element;Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration<*>;>;"
    .local p3, "member":Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration<*>;"
    instance-of v0, p3, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;

    if-eqz v0, :cond_1

    .line 1257
    move-object v0, p3

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;

    invoke-direct {p0, p2, v0}, Lorg/checkerframework/framework/stub/StubParser;->findElement(Ljavax/lang/model/element/TypeElement;Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v0

    .line 1258
    .local v0, "elt":Ljavax/lang/model/element/Element;
    if-eqz v0, :cond_0

    .line 1259
    invoke-static {p1, v0, p3}, Lorg/checkerframework/framework/stub/StubParser;->putNoOverride(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1261
    .end local v0    # "elt":Ljavax/lang/model/element/Element;
    :cond_0
    goto/16 :goto_1

    :cond_1
    instance-of v0, p3, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;

    if-eqz v0, :cond_3

    .line 1262
    move-object v0, p3

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;

    invoke-direct {p0, p2, v0}, Lorg/checkerframework/framework/stub/StubParser;->findElement(Ljavax/lang/model/element/TypeElement;Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v0

    .line 1263
    .restart local v0    # "elt":Ljavax/lang/model/element/Element;
    if-eqz v0, :cond_2

    .line 1264
    invoke-static {p1, v0, p3}, Lorg/checkerframework/framework/stub/StubParser;->putNoOverride(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1266
    .end local v0    # "elt":Ljavax/lang/model/element/Element;
    :cond_2
    goto/16 :goto_1

    :cond_3
    instance-of v0, p3, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;

    if-eqz v0, :cond_6

    .line 1267
    move-object v0, p3

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;

    .line 1268
    .local v0, "fieldDecl":Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->getVariables()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;

    .line 1269
    .local v2, "var":Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;
    invoke-direct {p0, p2, v2}, Lorg/checkerframework/framework/stub/StubParser;->findElement(Ljavax/lang/model/element/TypeElement;Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;)Ljavax/lang/model/element/VariableElement;

    move-result-object v3

    .line 1270
    .local v3, "varelt":Ljavax/lang/model/element/Element;
    if-eqz v3, :cond_4

    .line 1271
    invoke-static {p1, v3, v0}, Lorg/checkerframework/framework/stub/StubParser;->putNoOverride(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1273
    .end local v2    # "var":Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;
    .end local v3    # "varelt":Ljavax/lang/model/element/Element;
    :cond_4
    goto :goto_0

    .line 1274
    .end local v0    # "fieldDecl":Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;
    :cond_5
    goto :goto_1

    :cond_6
    instance-of v0, p3, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;

    if-eqz v0, :cond_8

    .line 1275
    move-object v0, p3

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;

    invoke-direct {p0, p2, v0}, Lorg/checkerframework/framework/stub/StubParser;->findElement(Ljavax/lang/model/element/TypeElement;Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;)Ljavax/lang/model/element/VariableElement;

    move-result-object v0

    .line 1276
    .local v0, "elt":Ljavax/lang/model/element/Element;
    if-eqz v0, :cond_7

    .line 1277
    invoke-static {p1, v0, p3}, Lorg/checkerframework/framework/stub/StubParser;->putNoOverride(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1279
    .end local v0    # "elt":Ljavax/lang/model/element/Element;
    :cond_7
    goto :goto_1

    :cond_8
    instance-of v0, p3, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    if-eqz v0, :cond_a

    .line 1280
    move-object v0, p3

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    invoke-direct {p0, p2, v0}, Lorg/checkerframework/framework/stub/StubParser;->findElement(Ljavax/lang/model/element/TypeElement;Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;)Ljavax/lang/model/element/Element;

    move-result-object v0

    .line 1281
    .restart local v0    # "elt":Ljavax/lang/model/element/Element;
    if-eqz v0, :cond_9

    .line 1282
    invoke-static {p1, v0, p3}, Lorg/checkerframework/framework/stub/StubParser;->putNoOverride(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1284
    .end local v0    # "elt":Ljavax/lang/model/element/Element;
    :cond_9
    goto :goto_1

    :cond_a
    instance-of v0, p3, Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;

    if-eqz v0, :cond_c

    .line 1285
    move-object v0, p3

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;

    invoke-direct {p0, p2, v0}, Lorg/checkerframework/framework/stub/StubParser;->findElement(Ljavax/lang/model/element/TypeElement;Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;)Ljavax/lang/model/element/Element;

    move-result-object v0

    .line 1286
    .restart local v0    # "elt":Ljavax/lang/model/element/Element;
    if-eqz v0, :cond_b

    .line 1287
    invoke-static {p1, v0, p3}, Lorg/checkerframework/framework/stub/StubParser;->putNoOverride(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1289
    .end local v0    # "elt":Ljavax/lang/model/element/Element;
    :cond_b
    goto :goto_1

    .line 1290
    :cond_c
    nop

    .line 1292
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    filled-new-array {v0, p4}, [Ljava/lang/Object;

    move-result-object v0

    .line 1291
    const-string v1, "Ignoring element of type %s in %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1290
    invoke-direct {p0, v0}, Lorg/checkerframework/framework/stub/StubParser;->stubDebug(Ljava/lang/String;)V

    .line 1294
    :goto_1
    return-void
.end method

.method private static putNoOverride(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;TK;TV;)V"
        }
    .end annotation

    .line 1940
    .local p0, "m":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_1

    .line 1943
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1944
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1946
    :cond_0
    return-void

    .line 1941
    :cond_1
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    const-string v1, "StubParser: key is null"

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static putOrAddToMap(Ljava/util/Map;Ljava/lang/String;Ljava/util/Set;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;)V"
        }
    .end annotation

    .line 1954
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;>;"
    .local p2, "annos":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1955
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 1957
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1959
    :goto_0
    return-void
.end method

.method private recordDeclAnnotation(Ljavax/lang/model/element/Element;Ljava/util/List;)V
    .locals 7
    .param p1, "elt"    # Ljavax/lang/model/element/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/Element;",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;",
            ">;)V"
        }
    .end annotation

    .line 1146
    .local p2, "annotations":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    if-nez p2, :cond_0

    .line 1147
    return-void

    .line 1149
    :cond_0
    invoke-static {}, Lorg/checkerframework/javacutil/AnnotationUtils;->createAnnotationSet()Ljava/util/SortedSet;

    move-result-object v0

    .line 1150
    .local v0, "annos":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;

    .line 1151
    .local v2, "annotation":Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;
    iget-object v3, p0, Lorg/checkerframework/framework/stub/StubParser;->allStubAnnotations:Ljava/util/Map;

    invoke-direct {p0, v2, v3}, Lorg/checkerframework/framework/stub/StubParser;->getAnnotation(Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;Ljava/util/Map;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v3

    .line 1152
    .local v3, "annoMirror":Ljavax/lang/model/element/AnnotationMirror;
    if-eqz v3, :cond_1

    .line 1154
    nop

    .line 1155
    invoke-interface {v3}, Ljavax/lang/model/element/AnnotationMirror;->getAnnotationType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v4

    invoke-interface {v4}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v4

    const-class v5, Ljava/lang/annotation/Target;

    invoke-interface {v4, v5}, Ljavax/lang/model/element/Element;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Ljava/lang/annotation/Target;

    .line 1157
    .local v4, "target":Ljava/lang/annotation/Target;
    invoke-static {v4}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementKindsForTarget(Ljava/lang/annotation/Target;)Ljava/util/EnumSet;

    move-result-object v5

    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1159
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1162
    .end local v2    # "annotation":Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;
    .end local v3    # "annoMirror":Ljavax/lang/model/element/AnnotationMirror;
    .end local v4    # "target":Ljava/lang/annotation/Target;
    :cond_1
    goto :goto_0

    .line 1163
    :cond_2
    invoke-static {p1}, Lorg/checkerframework/javacutil/ElementUtils;->getVerboseName(Ljavax/lang/model/element/Element;)Ljava/lang/String;

    move-result-object v1

    .line 1164
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lorg/checkerframework/framework/stub/StubParser;->declAnnos:Ljava/util/Map;

    invoke-static {v2, v1, v0}, Lorg/checkerframework/framework/stub/StubParser;->putOrAddToMap(Ljava/util/Map;Ljava/lang/String;Ljava/util/Set;)V

    .line 1165
    return-void
.end method

.method private recordDeclAnnotationFromStubFile(Ljavax/lang/model/element/Element;)V
    .locals 3
    .param p1, "elt"    # Ljavax/lang/model/element/Element;

    .line 1172
    iget-boolean v0, p0, Lorg/checkerframework/framework/stub/StubParser;->isJdkAsStub:Z

    if-eqz v0, :cond_0

    .line 1173
    return-void

    .line 1175
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/framework/stub/StubParser;->declAnnos:Ljava/util/Map;

    .line 1176
    invoke-static {p1}, Lorg/checkerframework/javacutil/ElementUtils;->getVerboseName(Ljavax/lang/model/element/Element;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/framework/stub/StubParser;->fromStubFile:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    .line 1175
    invoke-static {v0, v1, v2}, Lorg/checkerframework/framework/stub/StubParser;->putOrAddToMap(Ljava/util/Map;Ljava/lang/String;Ljava/util/Set;)V

    .line 1177
    return-void
.end method

.method private stubDebug(Ljava/lang/String;)V
    .locals 4
    .param p1, "warning"    # Ljava/lang/String;

    .line 2041
    sget-object v0, Lorg/checkerframework/framework/stub/StubParser;->warnings:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/checkerframework/framework/stub/StubParser;->debugStubParser:Z

    if-eqz v0, :cond_0

    .line 2042
    iget-object v0, p0, Lorg/checkerframework/framework/stub/StubParser;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    .line 2043
    invoke-interface {v0}, Ljavax/annotation/processing/ProcessingEnvironment;->getMessager()Ljavax/annotation/processing/Messager;

    move-result-object v0

    sget-object v1, Ljavax/tools/Diagnostic$Kind;->NOTE:Ljavax/tools/Diagnostic$Kind;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StubParser: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2044
    invoke-interface {v0, v1, v2}, Ljavax/annotation/processing/Messager;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;)V

    .line 2046
    :cond_0
    return-void
.end method

.method private varargs stubWarn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "warning"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 2032
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2033
    sget-object v0, Lorg/checkerframework/framework/stub/StubParser;->warnings:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2034
    iget-object v0, p0, Lorg/checkerframework/framework/stub/StubParser;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    .line 2035
    invoke-interface {v0}, Ljavax/annotation/processing/ProcessingEnvironment;->getMessager()Ljavax/annotation/processing/Messager;

    move-result-object v0

    sget-object v1, Ljavax/tools/Diagnostic$Kind;->WARNING:Ljavax/tools/Diagnostic$Kind;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StubParser: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2036
    invoke-interface {v0, v1, v2}, Ljavax/annotation/processing/Messager;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;)V

    .line 2038
    :cond_0
    return-void
.end method

.method private stubWarnNotFound(Ljava/lang/String;)V
    .locals 4
    .param p1, "warning"    # Ljava/lang/String;

    .line 2006
    sget-object v0, Lorg/checkerframework/framework/stub/StubParser;->warnings:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/checkerframework/framework/stub/StubParser;->isJdkAsStub:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/checkerframework/framework/stub/StubParser;->warnIfNotFound:Z

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lorg/checkerframework/framework/stub/StubParser;->debugStubParser:Z

    if-eqz v0, :cond_2

    .line 2007
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/framework/stub/StubParser;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    .line 2008
    invoke-interface {v0}, Ljavax/annotation/processing/ProcessingEnvironment;->getMessager()Ljavax/annotation/processing/Messager;

    move-result-object v0

    sget-object v1, Ljavax/tools/Diagnostic$Kind;->WARNING:Ljavax/tools/Diagnostic$Kind;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StubParser: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2009
    invoke-interface {v0, v1, v2}, Ljavax/annotation/processing/Messager;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;)V

    .line 2011
    :cond_2
    return-void
.end method

.method private stubWarnOverwritesBytecode(Ljava/lang/String;)V
    .locals 4
    .param p1, "warning"    # Ljava/lang/String;

    .line 2018
    sget-object v0, Lorg/checkerframework/framework/stub/StubParser;->warnings:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/checkerframework/framework/stub/StubParser;->warnIfStubOverwritesBytecode:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/checkerframework/framework/stub/StubParser;->debugStubParser:Z

    if-eqz v0, :cond_1

    .line 2019
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/framework/stub/StubParser;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    .line 2020
    invoke-interface {v0}, Ljavax/annotation/processing/ProcessingEnvironment;->getMessager()Ljavax/annotation/processing/Messager;

    move-result-object v0

    sget-object v1, Ljavax/tools/Diagnostic$Kind;->WARNING:Ljavax/tools/Diagnostic$Kind;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StubParser: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2021
    invoke-interface {v0, v1, v2}, Ljavax/annotation/processing/Messager;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;)V

    .line 2023
    :cond_1
    return-void
.end method

.method private unwrapDeclaredType(Lorg/checkerframework/com/github/javaparser/ast/type/Type;)Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    .line 928
    instance-of v0, p1, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;

    if-eqz v0, :cond_0

    .line 929
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;

    return-object v0

    .line 930
    :cond_0
    instance-of v0, p1, Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->getArrayLevel()I

    move-result v0

    if-nez v0, :cond_1

    .line 931
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->getElementType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/framework/stub/StubParser;->unwrapDeclaredType(Lorg/checkerframework/com/github/javaparser/ast/type/Type;)Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;

    move-result-object v0

    return-object v0

    .line 933
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
