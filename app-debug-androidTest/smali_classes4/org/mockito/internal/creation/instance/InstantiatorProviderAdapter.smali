.class public Lorg/mockito/internal/creation/instance/InstantiatorProviderAdapter;
.super Ljava/lang/Object;
.source "InstantiatorProviderAdapter.java"

# interfaces
.implements Lorg/mockito/plugins/InstantiatorProvider2;


# instance fields
.field private final provider:Lorg/mockito/plugins/InstantiatorProvider;


# direct methods
.method public constructor <init>(Lorg/mockito/plugins/InstantiatorProvider;)V
    .locals 0
    .param p1, "provider"    # Lorg/mockito/plugins/InstantiatorProvider;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lorg/mockito/internal/creation/instance/InstantiatorProviderAdapter;->provider:Lorg/mockito/plugins/InstantiatorProvider;

    .line 21
    return-void
.end method

.method static synthetic access$000(Lorg/mockito/internal/creation/instance/InstantiatorProviderAdapter;)Lorg/mockito/plugins/InstantiatorProvider;
    .locals 1
    .param p0, "x0"    # Lorg/mockito/internal/creation/instance/InstantiatorProviderAdapter;

    .line 16
    iget-object v0, p0, Lorg/mockito/internal/creation/instance/InstantiatorProviderAdapter;->provider:Lorg/mockito/plugins/InstantiatorProvider;

    return-object v0
.end method


# virtual methods
.method public getInstantiator(Lorg/mockito/mock/MockCreationSettings;)Lorg/mockito/creation/instance/Instantiator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/mock/MockCreationSettings<",
            "*>;)",
            "Lorg/mockito/creation/instance/Instantiator;"
        }
    .end annotation

    .line 25
    .local p1, "settings":Lorg/mockito/mock/MockCreationSettings;, "Lorg/mockito/mock/MockCreationSettings<*>;"
    new-instance v0, Lorg/mockito/internal/creation/instance/InstantiatorProviderAdapter$1;

    invoke-direct {v0, p0, p1}, Lorg/mockito/internal/creation/instance/InstantiatorProviderAdapter$1;-><init>(Lorg/mockito/internal/creation/instance/InstantiatorProviderAdapter;Lorg/mockito/mock/MockCreationSettings;)V

    return-object v0
.end method
