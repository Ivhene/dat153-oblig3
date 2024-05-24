.class Lcom/google/android/apps/common/testing/accessibility/framework/checks/TraversalOrderCheck$CycleException;
.super Ljava/lang/Exception;
.source "TraversalOrderCheck.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/common/testing/accessibility/framework/checks/TraversalOrderCheck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CycleException"
.end annotation


# instance fields
.field private final elements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;",
            ">;)V"
        }
    .end annotation

    .line 217
    .local p1, "elements":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;>;"
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 218
    iput-object p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/checks/TraversalOrderCheck$CycleException;->elements:Ljava/util/List;

    .line 219
    return-void
.end method


# virtual methods
.method getElements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;",
            ">;"
        }
    .end annotation

    .line 222
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/checks/TraversalOrderCheck$CycleException;->elements:Ljava/util/List;

    return-object v0
.end method
