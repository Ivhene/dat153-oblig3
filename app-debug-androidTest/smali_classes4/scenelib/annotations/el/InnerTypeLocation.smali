.class public final Lscenelib/annotations/el/InnerTypeLocation;
.super Ljava/lang/Object;
.source "InnerTypeLocation.java"


# static fields
.field public static final EMPTY_INNER_TYPE_LOCATION:Lscenelib/annotations/el/InnerTypeLocation;


# instance fields
.field public final location:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Lscenelib/annotations/el/InnerTypeLocation;

    .line 20
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lscenelib/annotations/el/InnerTypeLocation;-><init>(Ljava/util/List;)V

    sput-object v0, Lscenelib/annotations/el/InnerTypeLocation;->EMPTY_INNER_TYPE_LOCATION:Lscenelib/annotations/el/InnerTypeLocation;

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;",
            ">;)V"
        }
    .end annotation

    .line 36
    .local p1, "location":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lscenelib/annotations/el/InnerTypeLocation;->location:Ljava/util/List;

    .line 39
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 58
    instance-of v0, p1, Lscenelib/annotations/el/InnerTypeLocation;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lscenelib/annotations/el/InnerTypeLocation;

    .line 59
    invoke-virtual {p0, v0}, Lscenelib/annotations/el/InnerTypeLocation;->equals(Lscenelib/annotations/el/InnerTypeLocation;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 58
    :goto_0
    return v0
.end method

.method public equals(Lscenelib/annotations/el/InnerTypeLocation;)Z
    .locals 2
    .param p1, "l"    # Lscenelib/annotations/el/InnerTypeLocation;

    .line 47
    iget-object v0, p0, Lscenelib/annotations/el/InnerTypeLocation;->location:Ljava/util/List;

    iget-object v1, p1, Lscenelib/annotations/el/InnerTypeLocation;->location:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 64
    iget-object v0, p0, Lscenelib/annotations/el/InnerTypeLocation;->location:Ljava/util/List;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InnerTypeLocation("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lscenelib/annotations/el/InnerTypeLocation;->location:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
