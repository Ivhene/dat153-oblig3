.class public Lnet/bytebuddy/description/annotation/AnnotationValue$ForMissingType$Loaded;
.super Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$AbstractBase$ForUnresolvedProperty;
.source "AnnotationValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/annotation/AnnotationValue$ForMissingType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Loaded"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Ljava/lang/Object;",
        ">",
        "Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$AbstractBase$ForUnresolvedProperty<",
        "TU;>;"
    }
.end annotation


# instance fields
.field private final exception:Ljava/lang/ClassNotFoundException;

.field private final typeName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/ClassNotFoundException;)V
    .locals 0
    .param p1, "typeName"    # Ljava/lang/String;
    .param p2, "exception"    # Ljava/lang/ClassNotFoundException;

    .line 2576
    .local p0, "this":Lnet/bytebuddy/description/annotation/AnnotationValue$ForMissingType$Loaded;, "Lnet/bytebuddy/description/annotation/AnnotationValue$ForMissingType$Loaded<TU;>;"
    invoke-direct {p0}, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$AbstractBase$ForUnresolvedProperty;-><init>()V

    .line 2577
    iput-object p1, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForMissingType$Loaded;->typeName:Ljava/lang/String;

    .line 2578
    iput-object p2, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForMissingType$Loaded;->exception:Ljava/lang/ClassNotFoundException;

    .line 2579
    return-void
.end method


# virtual methods
.method public resolve()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TU;"
        }
    .end annotation

    .line 2585
    .local p0, "this":Lnet/bytebuddy/description/annotation/AnnotationValue$ForMissingType$Loaded;, "Lnet/bytebuddy/description/annotation/AnnotationValue$ForMissingType$Loaded<TU;>;"
    new-instance v0, Ljava/lang/TypeNotPresentException;

    iget-object v1, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForMissingType$Loaded;->typeName:Ljava/lang/String;

    iget-object v2, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForMissingType$Loaded;->exception:Ljava/lang/ClassNotFoundException;

    invoke-direct {v0, v1, v2}, Ljava/lang/TypeNotPresentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2590
    .local p0, "this":Lnet/bytebuddy/description/annotation/AnnotationValue$ForMissingType$Loaded;, "Lnet/bytebuddy/description/annotation/AnnotationValue$ForMissingType$Loaded<TU;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForMissingType$Loaded;->typeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".class /* Warning: type not present! */"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
