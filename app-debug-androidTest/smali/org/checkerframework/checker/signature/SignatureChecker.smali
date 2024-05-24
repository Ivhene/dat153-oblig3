.class public final Lorg/checkerframework/checker/signature/SignatureChecker;
.super Lorg/checkerframework/common/basetype/BaseTypeChecker;
.source "SignatureChecker.java"


# annotations
.annotation runtime Lorg/checkerframework/framework/qual/StubFiles;
    value = {
        "javac.astub",
        "javaparser.astub"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lorg/checkerframework/common/basetype/BaseTypeChecker;-><init>()V

    return-void
.end method


# virtual methods
.method public createFactory(Lcom/sun/source/tree/CompilationUnitTree;)Lorg/checkerframework/checker/signature/SignatureAnnotatedTypeFactory;
    .locals 1
    .param p1, "root"    # Lcom/sun/source/tree/CompilationUnitTree;

    .line 17
    new-instance v0, Lorg/checkerframework/checker/signature/SignatureAnnotatedTypeFactory;

    invoke-direct {v0, p0}, Lorg/checkerframework/checker/signature/SignatureAnnotatedTypeFactory;-><init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V

    return-object v0
.end method
