.class public Lnet/bytebuddy/description/type/RecordComponentList$ForLoadedRecordComponents;
.super Lnet/bytebuddy/description/type/RecordComponentList$AbstractBase;
.source "RecordComponentList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/RecordComponentList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForLoadedRecordComponents"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/bytebuddy/description/type/RecordComponentList$AbstractBase<",
        "Lnet/bytebuddy/description/type/RecordComponentDescription$InDefinedShape;",
        ">;"
    }
.end annotation


# instance fields
.field private final recordComponents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .line 127
    .local p1, "recordComponents":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-direct {p0}, Lnet/bytebuddy/description/type/RecordComponentList$AbstractBase;-><init>()V

    .line 128
    iput-object p1, p0, Lnet/bytebuddy/description/type/RecordComponentList$ForLoadedRecordComponents;->recordComponents:Ljava/util/List;

    .line 129
    return-void
.end method

.method protected varargs constructor <init>([Ljava/lang/Object;)V
    .locals 1
    .param p1, "recordComponent"    # [Ljava/lang/Object;

    .line 119
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/bytebuddy/description/type/RecordComponentList$ForLoadedRecordComponents;-><init>(Ljava/util/List;)V

    .line 120
    return-void
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 106
    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/type/RecordComponentList$ForLoadedRecordComponents;->get(I)Lnet/bytebuddy/description/type/RecordComponentDescription$InDefinedShape;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Lnet/bytebuddy/description/type/RecordComponentDescription$InDefinedShape;
    .locals 2
    .param p1, "index"    # I

    .line 135
    new-instance v0, Lnet/bytebuddy/description/type/RecordComponentDescription$ForLoadedRecordComponent;

    iget-object v1, p0, Lnet/bytebuddy/description/type/RecordComponentList$ForLoadedRecordComponents;->recordComponents:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/AnnotatedElement;

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/type/RecordComponentDescription$ForLoadedRecordComponent;-><init>(Ljava/lang/reflect/AnnotatedElement;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 142
    iget-object v0, p0, Lnet/bytebuddy/description/type/RecordComponentList$ForLoadedRecordComponents;->recordComponents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
