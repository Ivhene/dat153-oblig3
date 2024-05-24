.class final Lnet/bytebuddy/jar/asm/Edge;
.super Ljava/lang/Object;
.source "Edge.java"


# static fields
.field static final EXCEPTION:I = 0x7fffffff

.field static final JUMP:I


# instance fields
.field final info:I

.field nextEdge:Lnet/bytebuddy/jar/asm/Edge;

.field final successor:Lnet/bytebuddy/jar/asm/Label;


# direct methods
.method constructor <init>(ILnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Edge;)V
    .locals 0
    .param p1, "info"    # I
    .param p2, "successor"    # Lnet/bytebuddy/jar/asm/Label;
    .param p3, "nextEdge"    # Lnet/bytebuddy/jar/asm/Edge;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput p1, p0, Lnet/bytebuddy/jar/asm/Edge;->info:I

    .line 88
    iput-object p2, p0, Lnet/bytebuddy/jar/asm/Edge;->successor:Lnet/bytebuddy/jar/asm/Label;

    .line 89
    iput-object p3, p0, Lnet/bytebuddy/jar/asm/Edge;->nextEdge:Lnet/bytebuddy/jar/asm/Edge;

    .line 90
    return-void
.end method
