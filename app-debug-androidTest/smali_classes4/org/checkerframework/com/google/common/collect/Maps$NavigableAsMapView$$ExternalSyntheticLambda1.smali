.class public final synthetic Lorg/checkerframework/com/google/common/collect/Maps$NavigableAsMapView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lorg/checkerframework/com/google/common/collect/Maps$NavigableAsMapView;


# direct methods
.method public synthetic constructor <init>(Lorg/checkerframework/com/google/common/collect/Maps$NavigableAsMapView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/Maps$NavigableAsMapView$$ExternalSyntheticLambda1;->f$0:Lorg/checkerframework/com/google/common/collect/Maps$NavigableAsMapView;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Maps$NavigableAsMapView$$ExternalSyntheticLambda1;->f$0:Lorg/checkerframework/com/google/common/collect/Maps$NavigableAsMapView;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/collect/Maps$NavigableAsMapView;->lambda$entrySpliterator$0$org-checkerframework-com-google-common-collect-Maps$NavigableAsMapView(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method