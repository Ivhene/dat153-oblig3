.class Landroidx/test/espresso/contrib/RecyclerViewActions$MatchedItem;
.super Ljava/lang/Object;
.source "RecyclerViewActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/contrib/RecyclerViewActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MatchedItem"
.end annotation


# instance fields
.field public final description:Ljava/lang/String;

.field public final position:I


# direct methods
.method private constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "description"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "description"
        }
    .end annotation

    .line 472
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 473
    iput p1, p0, Landroidx/test/espresso/contrib/RecyclerViewActions$MatchedItem;->position:I

    .line 474
    iput-object p2, p0, Landroidx/test/espresso/contrib/RecyclerViewActions$MatchedItem;->description:Ljava/lang/String;

    .line 475
    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;Landroidx/test/espresso/contrib/RecyclerViewActions$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Landroidx/test/espresso/contrib/RecyclerViewActions$1;

    .line 468
    invoke-direct {p0, p1, p2}, Landroidx/test/espresso/contrib/RecyclerViewActions$MatchedItem;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 479
    iget-object v0, p0, Landroidx/test/espresso/contrib/RecyclerViewActions$MatchedItem;->description:Ljava/lang/String;

    return-object v0
.end method
