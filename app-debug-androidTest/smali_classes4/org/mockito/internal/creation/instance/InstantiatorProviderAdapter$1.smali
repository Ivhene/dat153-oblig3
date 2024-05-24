.class Lorg/mockito/internal/creation/instance/InstantiatorProviderAdapter$1;
.super Ljava/lang/Object;
.source "InstantiatorProviderAdapter.java"

# interfaces
.implements Lorg/mockito/creation/instance/Instantiator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mockito/internal/creation/instance/InstantiatorProviderAdapter;->getInstantiator(Lorg/mockito/mock/MockCreationSettings;)Lorg/mockito/creation/instance/Instantiator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mockito/internal/creation/instance/InstantiatorProviderAdapter;

.field final synthetic val$settings:Lorg/mockito/mock/MockCreationSettings;


# direct methods
.method constructor <init>(Lorg/mockito/internal/creation/instance/InstantiatorProviderAdapter;Lorg/mockito/mock/MockCreationSettings;)V
    .locals 0
    .param p1, "this$0"    # Lorg/mockito/internal/creation/instance/InstantiatorProviderAdapter;

    .line 25
    iput-object p1, p0, Lorg/mockito/internal/creation/instance/InstantiatorProviderAdapter$1;->this$0:Lorg/mockito/internal/creation/instance/InstantiatorProviderAdapter;

    iput-object p2, p0, Lorg/mockito/internal/creation/instance/InstantiatorProviderAdapter$1;->val$settings:Lorg/mockito/mock/MockCreationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 29
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    iget-object v0, p0, Lorg/mockito/internal/creation/instance/InstantiatorProviderAdapter$1;->this$0:Lorg/mockito/internal/creation/instance/InstantiatorProviderAdapter;

    invoke-static {v0}, Lorg/mockito/internal/creation/instance/InstantiatorProviderAdapter;->access$000(Lorg/mockito/internal/creation/instance/InstantiatorProviderAdapter;)Lorg/mockito/plugins/InstantiatorProvider;

    move-result-object v0

    iget-object v1, p0, Lorg/mockito/internal/creation/instance/InstantiatorProviderAdapter$1;->val$settings:Lorg/mockito/mock/MockCreationSettings;

    invoke-interface {v0, v1}, Lorg/mockito/plugins/InstantiatorProvider;->getInstantiator(Lorg/mockito/mock/MockCreationSettings;)Lorg/mockito/internal/creation/instance/Instantiator;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/mockito/internal/creation/instance/Instantiator;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lorg/mockito/internal/creation/instance/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 30
    :catch_0
    move-exception v0

    .line 31
    .local v0, "e":Lorg/mockito/internal/creation/instance/InstantiationException;
    new-instance v1, Lorg/mockito/creation/instance/InstantiationException;

    invoke-virtual {v0}, Lorg/mockito/internal/creation/instance/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/mockito/internal/creation/instance/InstantiationException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/mockito/creation/instance/InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
