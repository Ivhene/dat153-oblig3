.class public final Lorg/mockito/internal/MockedConstructionImpl;
.super Ljava/lang/Object;
.source "MockedConstructionImpl.java"

# interfaces
.implements Lorg/mockito/MockedConstruction;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/mockito/MockedConstruction<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private closed:Z

.field private final control:Lorg/mockito/plugins/MockMaker$ConstructionMockControl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mockito/plugins/MockMaker$ConstructionMockControl<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final location:Lorg/mockito/invocation/Location;


# direct methods
.method protected constructor <init>(Lorg/mockito/plugins/MockMaker$ConstructionMockControl;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/plugins/MockMaker$ConstructionMockControl<",
            "TT;>;)V"
        }
    .end annotation

    .line 26
    .local p0, "this":Lorg/mockito/internal/MockedConstructionImpl;, "Lorg/mockito/internal/MockedConstructionImpl<TT;>;"
    .local p1, "control":Lorg/mockito/plugins/MockMaker$ConstructionMockControl;, "Lorg/mockito/plugins/MockMaker$ConstructionMockControl<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lorg/mockito/internal/debugging/LocationImpl;

    invoke-direct {v0}, Lorg/mockito/internal/debugging/LocationImpl;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/MockedConstructionImpl;->location:Lorg/mockito/invocation/Location;

    .line 27
    iput-object p1, p0, Lorg/mockito/internal/MockedConstructionImpl;->control:Lorg/mockito/plugins/MockMaker$ConstructionMockControl;

    .line 28
    return-void
.end method

.method private assertNotClosed()V
    .locals 4

    .line 56
    .local p0, "this":Lorg/mockito/internal/MockedConstructionImpl;, "Lorg/mockito/internal/MockedConstructionImpl<TT;>;"
    iget-boolean v0, p0, Lorg/mockito/internal/MockedConstructionImpl;->closed:Z

    if-nez v0, :cond_0

    .line 63
    return-void

    .line 57
    :cond_0
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    iget-object v1, p0, Lorg/mockito/internal/MockedConstructionImpl;->location:Lorg/mockito/invocation/Location;

    .line 60
    invoke-interface {v1}, Lorg/mockito/invocation/Location;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "is already resolved and cannot longer be used"

    const-string v3, "The static mock created at"

    filled-new-array {v3, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 58
    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 42
    .local p0, "this":Lorg/mockito/internal/MockedConstructionImpl;, "Lorg/mockito/internal/MockedConstructionImpl<TT;>;"
    invoke-direct {p0}, Lorg/mockito/internal/MockedConstructionImpl;->assertNotClosed()V

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mockito/internal/MockedConstructionImpl;->closed:Z

    .line 45
    iget-object v0, p0, Lorg/mockito/internal/MockedConstructionImpl;->control:Lorg/mockito/plugins/MockMaker$ConstructionMockControl;

    invoke-interface {v0}, Lorg/mockito/plugins/MockMaker$ConstructionMockControl;->disable()V

    .line 46
    return-void
.end method

.method public closeOnDemand()V
    .locals 1

    .line 50
    .local p0, "this":Lorg/mockito/internal/MockedConstructionImpl;, "Lorg/mockito/internal/MockedConstructionImpl<TT;>;"
    iget-boolean v0, p0, Lorg/mockito/internal/MockedConstructionImpl;->closed:Z

    if-nez v0, :cond_0

    .line 51
    invoke-virtual {p0}, Lorg/mockito/internal/MockedConstructionImpl;->close()V

    .line 53
    :cond_0
    return-void
.end method

.method public constructed()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 32
    .local p0, "this":Lorg/mockito/internal/MockedConstructionImpl;, "Lorg/mockito/internal/MockedConstructionImpl<TT;>;"
    iget-object v0, p0, Lorg/mockito/internal/MockedConstructionImpl;->control:Lorg/mockito/plugins/MockMaker$ConstructionMockControl;

    invoke-interface {v0}, Lorg/mockito/plugins/MockMaker$ConstructionMockControl;->getMocks()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isClosed()Z
    .locals 1

    .line 37
    .local p0, "this":Lorg/mockito/internal/MockedConstructionImpl;, "Lorg/mockito/internal/MockedConstructionImpl<TT;>;"
    iget-boolean v0, p0, Lorg/mockito/internal/MockedConstructionImpl;->closed:Z

    return v0
.end method
