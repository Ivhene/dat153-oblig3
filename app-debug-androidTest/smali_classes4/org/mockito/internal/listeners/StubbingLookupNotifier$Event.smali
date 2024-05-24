.class Lorg/mockito/internal/listeners/StubbingLookupNotifier$Event;
.super Ljava/lang/Object;
.source "StubbingLookupNotifier.java"

# interfaces
.implements Lorg/mockito/listeners/StubbingLookupEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/internal/listeners/StubbingLookupNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Event"
.end annotation


# instance fields
.field private final allStubbings:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/mockito/stubbing/Stubbing;",
            ">;"
        }
    .end annotation
.end field

.field private final invocation:Lorg/mockito/invocation/Invocation;

.field private final mockSettings:Lorg/mockito/mock/MockCreationSettings;

.field private final stubbing:Lorg/mockito/stubbing/Stubbing;


# direct methods
.method public constructor <init>(Lorg/mockito/invocation/Invocation;Lorg/mockito/stubbing/Stubbing;Ljava/util/Collection;Lorg/mockito/mock/MockCreationSettings;)V
    .locals 0
    .param p1, "invocation"    # Lorg/mockito/invocation/Invocation;
    .param p2, "stubbing"    # Lorg/mockito/stubbing/Stubbing;
    .param p4, "mockSettings"    # Lorg/mockito/mock/MockCreationSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/invocation/Invocation;",
            "Lorg/mockito/stubbing/Stubbing;",
            "Ljava/util/Collection<",
            "Lorg/mockito/stubbing/Stubbing;",
            ">;",
            "Lorg/mockito/mock/MockCreationSettings;",
            ")V"
        }
    .end annotation

    .line 45
    .local p3, "allStubbings":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/mockito/stubbing/Stubbing;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/mockito/internal/listeners/StubbingLookupNotifier$Event;->invocation:Lorg/mockito/invocation/Invocation;

    .line 47
    iput-object p2, p0, Lorg/mockito/internal/listeners/StubbingLookupNotifier$Event;->stubbing:Lorg/mockito/stubbing/Stubbing;

    .line 48
    iput-object p3, p0, Lorg/mockito/internal/listeners/StubbingLookupNotifier$Event;->allStubbings:Ljava/util/Collection;

    .line 49
    iput-object p4, p0, Lorg/mockito/internal/listeners/StubbingLookupNotifier$Event;->mockSettings:Lorg/mockito/mock/MockCreationSettings;

    .line 50
    return-void
.end method


# virtual methods
.method public getAllStubbings()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/mockito/stubbing/Stubbing;",
            ">;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lorg/mockito/internal/listeners/StubbingLookupNotifier$Event;->allStubbings:Ljava/util/Collection;

    return-object v0
.end method

.method public getInvocation()Lorg/mockito/invocation/Invocation;
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/mockito/internal/listeners/StubbingLookupNotifier$Event;->invocation:Lorg/mockito/invocation/Invocation;

    return-object v0
.end method

.method public getMockSettings()Lorg/mockito/mock/MockCreationSettings;
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/mockito/internal/listeners/StubbingLookupNotifier$Event;->mockSettings:Lorg/mockito/mock/MockCreationSettings;

    return-object v0
.end method

.method public getStubbingFound()Lorg/mockito/stubbing/Stubbing;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/mockito/internal/listeners/StubbingLookupNotifier$Event;->stubbing:Lorg/mockito/stubbing/Stubbing;

    return-object v0
.end method
