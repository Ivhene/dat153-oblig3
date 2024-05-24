.class public final synthetic Lorg/checkerframework/com/github/javaparser/utils/SourceZip$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/utils/SourceZip$Callback;


# instance fields
.field public final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/utils/SourceZip$$ExternalSyntheticLambda1;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final process(Ljava/nio/file/Path;Lorg/checkerframework/com/github/javaparser/ParseResult;)V
    .locals 1

    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/SourceZip$$ExternalSyntheticLambda1;->f$0:Ljava/util/List;

    invoke-static {v0, p1, p2}, Lorg/checkerframework/com/github/javaparser/utils/SourceZip;->lambda$parse$2(Ljava/util/List;Ljava/nio/file/Path;Lorg/checkerframework/com/github/javaparser/ParseResult;)V

    return-void
.end method
