.class public final synthetic Lorg/checkerframework/com/google/common/collect/Maps$TransformedEntriesMap$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lorg/checkerframework/com/google/common/collect/Maps$TransformedEntriesMap;

.field public final synthetic f$1:Ljava/util/function/BiConsumer;


# direct methods
.method public synthetic constructor <init>(Lorg/checkerframework/com/google/common/collect/Maps$TransformedEntriesMap;Ljava/util/function/BiConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/Maps$TransformedEntriesMap$$ExternalSyntheticLambda0;->f$0:Lorg/checkerframework/com/google/common/collect/Maps$TransformedEntriesMap;

    iput-object p2, p0, Lorg/checkerframework/com/google/common/collect/Maps$TransformedEntriesMap$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/BiConsumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Maps$TransformedEntriesMap$$ExternalSyntheticLambda0;->f$0:Lorg/checkerframework/com/google/common/collect/Maps$TransformedEntriesMap;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Maps$TransformedEntriesMap$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/BiConsumer;

    invoke-virtual {v0, v1, p1, p2}, Lorg/checkerframework/com/google/common/collect/Maps$TransformedEntriesMap;->lambda$forEach$0$org-checkerframework-com-google-common-collect-Maps$TransformedEntriesMap(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
