.class public Lorg/checkerframework/common/util/debug/TypeOutputtingChecker;
.super Lorg/checkerframework/common/basetype/BaseTypeChecker;
.source "TypeOutputtingChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/common/util/debug/TypeOutputtingChecker$GeneralAnnotatedTypeFactory;,
        Lorg/checkerframework/common/util/debug/TypeOutputtingChecker$Visitor;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 51
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Lorg/checkerframework/common/basetype/BaseTypeChecker;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .param p0, "args"    # [Ljava/lang/String;

    .line 104
    new-instance v0, Lorg/checkerframework/common/util/debug/TypeOutputtingChecker;

    invoke-direct {v0}, Lorg/checkerframework/common/util/debug/TypeOutputtingChecker;-><init>()V

    invoke-virtual {v0, p0}, Lorg/checkerframework/common/util/debug/TypeOutputtingChecker;->run([Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method protected static printClassType(Ljavax/lang/model/element/TypeElement;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V
    .locals 8
    .param p0, "typeElt"    # Ljavax/lang/model/element/TypeElement;
    .param p1, "atypeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 125
    if-eqz p0, :cond_3

    .line 127
    invoke-interface {p0}, Ljavax/lang/model/element/TypeElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "simpleName":Ljava/lang/String;
    invoke-virtual {p1, p0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->fromElement(Ljavax/lang/model/element/TypeElement;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v1

    .line 130
    .local v1, "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->directSuperTypes()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 133
    invoke-interface {p0}, Ljavax/lang/model/element/TypeElement;->getEnclosedElements()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/element/Element;

    .line 134
    .local v3, "enclosedElt":Ljavax/lang/model/element/Element;
    instance-of v4, v3, Ljavax/lang/model/element/TypeElement;

    if-eqz v4, :cond_0

    .line 135
    move-object v4, v3

    check-cast v4, Ljavax/lang/model/element/TypeElement;

    invoke-static {v4, p1}, Lorg/checkerframework/common/util/debug/TypeOutputtingChecker;->printClassType(Ljavax/lang/model/element/TypeElement;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    .line 137
    :cond_0
    invoke-interface {v3}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/lang/model/element/ElementKind;->isField()Z

    move-result v4

    if-nez v4, :cond_1

    instance-of v4, v3, Ljavax/lang/model/element/ExecutableElement;

    if-nez v4, :cond_1

    .line 138
    goto :goto_0

    .line 140
    :cond_1
    invoke-virtual {p1, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->fromElement(Ljavax/lang/model/element/Element;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v4

    .line 141
    .local v4, "memberType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\t\t"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 142
    .end local v3    # "enclosedElt":Ljavax/lang/model/element/Element;
    .end local v4    # "memberType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    goto :goto_0

    .line 143
    :cond_2
    return-void

    .line 125
    .end local v0    # "simpleName":Ljava/lang/String;
    .end local v1    # "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method


# virtual methods
.method protected createSourceVisitor()Lorg/checkerframework/common/basetype/BaseTypeVisitor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/common/basetype/BaseTypeVisitor<",
            "*>;"
        }
    .end annotation

    .line 55
    new-instance v0, Lorg/checkerframework/common/util/debug/TypeOutputtingChecker$Visitor;

    invoke-direct {v0, p0}, Lorg/checkerframework/common/util/debug/TypeOutputtingChecker$Visitor;-><init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V

    return-object v0
.end method

.method protected bridge synthetic createSourceVisitor()Lorg/checkerframework/framework/source/SourceVisitor;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lorg/checkerframework/common/util/debug/TypeOutputtingChecker;->createSourceVisitor()Lorg/checkerframework/common/basetype/BaseTypeVisitor;

    move-result-object v0

    return-object v0
.end method

.method public run([Ljava/lang/String;)V
    .locals 7
    .param p1, "args"    # [Ljava/lang/String;

    .line 108
    new-instance v0, Lcom/sun/tools/javac/util/Context;

    invoke-direct {v0}, Lcom/sun/tools/javac/util/Context;-><init>()V

    invoke-static {v0}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;

    move-result-object v0

    .line 109
    .local v0, "env":Ljavax/annotation/processing/ProcessingEnvironment;
    invoke-interface {v0}, Ljavax/annotation/processing/ProcessingEnvironment;->getElementUtils()Ljavax/lang/model/util/Elements;

    move-result-object v1

    .line 113
    .local v1, "elements":Ljavax/lang/model/util/Elements;
    new-instance v2, Lorg/checkerframework/common/util/debug/TypeOutputtingChecker$GeneralAnnotatedTypeFactory;

    invoke-direct {v2, p0}, Lorg/checkerframework/common/util/debug/TypeOutputtingChecker$GeneralAnnotatedTypeFactory;-><init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V

    .line 115
    .local v2, "atypeFactory":Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    array-length v3, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, p1, v4

    .line 116
    .local v5, "className":Ljava/lang/String;
    invoke-interface {v1, v5}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object v6

    .line 117
    .local v6, "typeElt":Ljavax/lang/model/element/TypeElement;
    invoke-static {v6, v2}, Lorg/checkerframework/common/util/debug/TypeOutputtingChecker;->printClassType(Ljavax/lang/model/element/TypeElement;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    .line 115
    .end local v5    # "className":Ljava/lang/String;
    .end local v6    # "typeElt":Ljavax/lang/model/element/TypeElement;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 119
    :cond_0
    return-void
.end method
