.class public Lorg/checkerframework/checker/fenum/FenumChecker;
.super Lorg/checkerframework/common/basetype/BaseTypeChecker;
.source "FenumChecker.java"


# annotations
.annotation runtime Ljavax/annotation/processing/SupportedOptions;
    value = {
        "quals",
        "qualDirs"
    }
.end annotation

.annotation runtime Lorg/checkerframework/framework/qual/StubFiles;
    value = {
        "jdnc.astub"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lorg/checkerframework/common/basetype/BaseTypeChecker;-><init>()V

    return-void
.end method


# virtual methods
.method public getSuppressWarningsKeys()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lorg/checkerframework/checker/fenum/FenumChecker;->visitor:Lorg/checkerframework/framework/source/SourceVisitor;

    .line 38
    invoke-super {p0}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getSuppressWarningsKeys()Ljava/util/Collection;

    move-result-object v1

    .line 37
    invoke-static {v0, v1}, Lorg/checkerframework/common/subtyping/SubtypingChecker;->getSuppressWarningsKeys(Lorg/checkerframework/framework/source/SourceVisitor;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
