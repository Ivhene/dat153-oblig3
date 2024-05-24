.class public Lnet/bytebuddy/description/type/RecordComponentList$Explicit;
.super Lnet/bytebuddy/description/type/RecordComponentList$AbstractBase;
.source "RecordComponentList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/RecordComponentList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Explicit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lnet/bytebuddy/description/type/RecordComponentDescription;",
        ">",
        "Lnet/bytebuddy/description/type/RecordComponentList$AbstractBase<",
        "TS;>;"
    }
.end annotation


# instance fields
.field private final recordComponents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+TS;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TS;>;)V"
        }
    .end annotation

    .line 173
    .local p0, "this":Lnet/bytebuddy/description/type/RecordComponentList$Explicit;, "Lnet/bytebuddy/description/type/RecordComponentList$Explicit<TS;>;"
    .local p1, "recordComponents":Ljava/util/List;, "Ljava/util/List<+TS;>;"
    invoke-direct {p0}, Lnet/bytebuddy/description/type/RecordComponentList$AbstractBase;-><init>()V

    .line 174
    iput-object p1, p0, Lnet/bytebuddy/description/type/RecordComponentList$Explicit;->recordComponents:Ljava/util/List;

    .line 175
    return-void
.end method

.method public varargs constructor <init>([Lnet/bytebuddy/description/type/RecordComponentDescription;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TS;)V"
        }
    .end annotation

    .line 165
    .local p0, "this":Lnet/bytebuddy/description/type/RecordComponentList$Explicit;, "Lnet/bytebuddy/description/type/RecordComponentList$Explicit<TS;>;"
    .local p1, "recordComponent":[Lnet/bytebuddy/description/type/RecordComponentDescription;, "[TS;"
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/bytebuddy/description/type/RecordComponentList$Explicit;-><init>(Ljava/util/List;)V

    .line 166
    return-void
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 151
    .local p0, "this":Lnet/bytebuddy/description/type/RecordComponentList$Explicit;, "Lnet/bytebuddy/description/type/RecordComponentList$Explicit<TS;>;"
    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/type/RecordComponentList$Explicit;->get(I)Lnet/bytebuddy/description/type/RecordComponentDescription;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Lnet/bytebuddy/description/type/RecordComponentDescription;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TS;"
        }
    .end annotation

    .line 181
    .local p0, "this":Lnet/bytebuddy/description/type/RecordComponentList$Explicit;, "Lnet/bytebuddy/description/type/RecordComponentList$Explicit<TS;>;"
    iget-object v0, p0, Lnet/bytebuddy/description/type/RecordComponentList$Explicit;->recordComponents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/type/RecordComponentDescription;

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 188
    .local p0, "this":Lnet/bytebuddy/description/type/RecordComponentList$Explicit;, "Lnet/bytebuddy/description/type/RecordComponentList$Explicit<TS;>;"
    iget-object v0, p0, Lnet/bytebuddy/description/type/RecordComponentList$Explicit;->recordComponents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
