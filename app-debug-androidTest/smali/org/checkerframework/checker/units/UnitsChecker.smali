.class public Lorg/checkerframework/checker/units/UnitsChecker;
.super Lorg/checkerframework/common/basetype/BaseTypeChecker;
.source "UnitsChecker.java"


# annotations
.annotation runtime Ljavax/annotation/processing/SupportedOptions;
    value = {
        "units",
        "unitsDirs"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
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

    .line 30
    iget-object v0, p0, Lorg/checkerframework/checker/units/UnitsChecker;->visitor:Lorg/checkerframework/framework/source/SourceVisitor;

    .line 31
    invoke-super {p0}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getSuppressWarningsKeys()Ljava/util/Collection;

    move-result-object v1

    .line 30
    invoke-static {v0, v1}, Lorg/checkerframework/common/subtyping/SubtypingChecker;->getSuppressWarningsKeys(Lorg/checkerframework/framework/source/SourceVisitor;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
