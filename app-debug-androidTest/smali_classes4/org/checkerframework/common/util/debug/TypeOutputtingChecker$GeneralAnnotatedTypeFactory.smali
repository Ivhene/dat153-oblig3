.class public Lorg/checkerframework/common/util/debug/TypeOutputtingChecker$GeneralAnnotatedTypeFactory;
.super Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
.source "TypeOutputtingChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/common/util/debug/TypeOutputtingChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GeneralAnnotatedTypeFactory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/common/util/debug/TypeOutputtingChecker$GeneralAnnotatedTypeFactory$GeneralQualifierHierarchy;
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V
    .locals 0
    .param p1, "checker"    # Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 153
    invoke-direct {p0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;-><init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V

    .line 154
    invoke-virtual {p0}, Lorg/checkerframework/common/util/debug/TypeOutputtingChecker$GeneralAnnotatedTypeFactory;->postInit()V

    .line 155
    return-void
.end method


# virtual methods
.method public createQualifierHierarchy(Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;)Lorg/checkerframework/framework/type/QualifierHierarchy;
    .locals 1
    .param p1, "factory"    # Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;

    .line 175
    new-instance v0, Lorg/checkerframework/common/util/debug/TypeOutputtingChecker$GeneralAnnotatedTypeFactory$GeneralQualifierHierarchy;

    invoke-direct {v0, p1}, Lorg/checkerframework/common/util/debug/TypeOutputtingChecker$GeneralAnnotatedTypeFactory$GeneralQualifierHierarchy;-><init>(Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;)V

    return-object v0
.end method

.method public isSupportedQualifier(Ljavax/lang/model/element/AnnotationMirror;)Z
    .locals 1
    .param p1, "a"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 170
    const/4 v0, 0x1

    return v0
.end method

.method public postProcessClassTree(Lcom/sun/source/tree/ClassTree;)V
    .locals 0
    .param p1, "tree"    # Lcom/sun/source/tree/ClassTree;

    .line 165
    return-void
.end method
