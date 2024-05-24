.class public final synthetic Lorg/mockito/internal/configuration/InjectingAnnotationEngine$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field public final synthetic f$0:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mockito/internal/configuration/InjectingAnnotationEngine$$ExternalSyntheticLambda0;->f$0:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, Lorg/mockito/internal/configuration/InjectingAnnotationEngine$$ExternalSyntheticLambda0;->f$0:Ljava/util/Set;

    invoke-static {v0}, Lorg/mockito/internal/configuration/InjectingAnnotationEngine;->lambda$injectCloseableMocks$1(Ljava/util/Set;)V

    return-void
.end method
