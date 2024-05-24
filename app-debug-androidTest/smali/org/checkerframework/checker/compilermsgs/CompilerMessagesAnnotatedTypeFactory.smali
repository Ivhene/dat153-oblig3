.class public Lorg/checkerframework/checker/compilermsgs/CompilerMessagesAnnotatedTypeFactory;
.super Lorg/checkerframework/checker/propkey/PropertyKeyAnnotatedTypeFactory;
.source "CompilerMessagesAnnotatedTypeFactory.java"


# direct methods
.method public constructor <init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V
    .locals 0
    .param p1, "checker"    # Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 13
    invoke-direct {p0, p1}, Lorg/checkerframework/checker/propkey/PropertyKeyAnnotatedTypeFactory;-><init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V

    .line 18
    return-void
.end method


# virtual methods
.method public createTreeAnnotator()Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;
    .locals 4

    .line 22
    new-instance v0, Lorg/checkerframework/framework/type/treeannotator/ListTreeAnnotator;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;

    .line 23
    invoke-super {p0}, Lorg/checkerframework/checker/propkey/PropertyKeyAnnotatedTypeFactory;->createBasicTreeAnnotator()Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lorg/checkerframework/checker/propkey/PropertyKeyAnnotatedTypeFactory$KeyLookupTreeAnnotator;

    const-class v3, Lorg/checkerframework/checker/compilermsgs/qual/CompilerMessageKey;

    invoke-direct {v2, p0, p0, v3}, Lorg/checkerframework/checker/propkey/PropertyKeyAnnotatedTypeFactory$KeyLookupTreeAnnotator;-><init>(Lorg/checkerframework/checker/propkey/PropertyKeyAnnotatedTypeFactory;Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;Ljava/lang/Class;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lorg/checkerframework/framework/type/treeannotator/ListTreeAnnotator;-><init>([Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;)V

    .line 22
    return-object v0
.end method
