.class public final enum Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$NoOp;
.super Ljava/lang/Enum;
.source "RecordComponentAttributeAppender.java"

# interfaces
.implements Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender;
.implements Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NoOp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$NoOp;",
        ">;",
        "Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender;",
        "Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$Factory;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$NoOp;

.field public static final enum INSTANCE:Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$NoOp;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 50
    new-instance v0, Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$NoOp;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$NoOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$NoOp;->INSTANCE:Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$NoOp;

    .line 45
    filled-new-array {v0}, [Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$NoOp;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$NoOp;->$VALUES:[Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$NoOp;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$NoOp;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 45
    const-class v0, Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$NoOp;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$NoOp;

    return-object v0
.end method

.method public static values()[Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$NoOp;
    .locals 1

    .line 45
    sget-object v0, Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$NoOp;->$VALUES:[Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$NoOp;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$NoOp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$NoOp;

    return-object v0
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/RecordComponentVisitor;Lnet/bytebuddy/description/type/RecordComponentDescription;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;)V
    .locals 0
    .param p1, "recordComponentVisitor"    # Lnet/bytebuddy/jar/asm/RecordComponentVisitor;
    .param p2, "recordComponentDescription"    # Lnet/bytebuddy/description/type/RecordComponentDescription;
    .param p3, "annotationValueFilter"    # Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;

    .line 64
    return-void
.end method

.method public make(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender;
    .locals 0
    .param p1, "typeDescription"    # Lnet/bytebuddy/description/type/TypeDescription;

    .line 56
    return-object p0
.end method
